use dummy
create table customers(
customer_id varchar(10),
name varchar(100),
city varchar(100)
);

create table orders(
order_id varchar(10),
customer_id varchar(10),
order_date date,
total_amount varchar(100)
);

insert into customers values (1,"john smith", "new york"),
		 (2,"lisa wong", "san diego"), (3,"raj patel", "chicago"), (4,"Ana Ruiz", "Miami")
         
select * from customers

insert into orders values(101,1,'2024-12-15',250.00),(102,1,'2025-01-20',300.00),
		(103,3,'2025-02-20',125.00),(104,null,'2025-03-01',500.00)
	
 select * from orders

select customers.name, orders.order_date
from customers
inner join orders
on customers.customer_id=orders.customer_id;


select customers.city, customers.name, orders.total_amount
from customers
inner join orders
on customers.customer_id=orders.customer_id;

select customers.city, orders.order_id
from customers
right join orders
on customers.customer_id=orders.customer_id;

select customers.city, orders.order_id
from customers
left join orders
on customers.customer_id=orders.customer_id;

select customers.city, orders.order_id
from customers
full join orders
on customers.customer_id=orders.customer_id;

drop table orders
SELECT customers.city, orders.order_id
FROM customers
LEFT JOIN orders ON customers.customer_id = orders.customer_id

UNION

SELECT customers.city, orders.order_id
FROM customers
RIGHT JOIN orders ON customers.customer_id = orders.customer_id;