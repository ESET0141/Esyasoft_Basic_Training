use EsyaDb;

select * from books;
select * from users;
select * from orders;

select u.user_id, u.name , b.title, row_number() over (partition by u.user_id order by b.price) as row_numbers, 
from users as u
inner join orders as o 
on u.user_id = o.user_id 
inner join books as b on b.product_id = o.product_id
where price = (select max(b.price) from books b);

--Task 1 --

select o.order_no, u.name ,b.price, b.title,
row_number() over (partition by u.user_id order by b.price desc) as row_number,
rank() over (partition by u.user_id order by b.price desc) as ranks,
dense_rank() over (partition by u.user_id order by b.price desc) as d_ranks
from users as u inner join orders as o 
on u.user_id = o.user_id 
inner join books as b on b.product_id = o.product_id;

-- Task 2 --

select u.user_id, u.name ,
sum(b.price) as total_spent, 
rank() over ( order by sum(b.price) desc) as ranks,
dense_rank() over (order by sum(b.price) desc) as d_ranks
from users as u inner join orders as o 
on u.user_id = o.user_id 
inner join books as b on b.product_id = o.product_id
group by u.user_id,u.name;