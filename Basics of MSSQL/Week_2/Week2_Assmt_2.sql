use master

select * from Customers;

use EsyaDb

select * from books;

select * from books order by price desc offset 1 rows fetch next 3 rows only;

select top 3 * from books order by price desc;

/*offset doesn't work on top clause */

select count(*), product_id from books group by product_id having count(*) >0;



/*Tasks*/

/*Query 1*/

select * from books;
select * from users;
select * from orders;

select u.name, b.title , o.order_no from users as u inner join orders as o on u.user_id = o.user_id 
inner join books as b on o.product_id = b.product_id;

/*Query 2*/

select count(*) as total_orders from orders;

/*Query 3*/

select u.name, b.title , o.order_no from users as u inner join orders as o on u.user_id = o.user_id 
inner join books as b on o.product_id = b.product_id where b.title='How to laugh';

/*Query 4*/

select distinct u.name, b.title , o.order_no from users as u inner join orders as o on u.user_id = o.user_id 
inner join books as b on o.product_id = b.product_id;

/*Query 5*/

select u.name, sum(b.price) as total_price from users as u inner join orders as o on u.user_id = o.user_id 
inner join books as b on o.product_id = b.product_id group by u.name;

/*Query 6*/

select top 1 u.name , sum(b.price) as Total_price from users as u inner join orders as o on u.user_id = o.user_id 
inner join books as b on o.product_id = b.product_id group by u.name order by Total_price desc;

/*Query 7*/

select max(price) as most_costly, min(price) as least_costly from books;

/*Query 8*/

select title from books where price = (select max(price) from books);

/*Query 9*/

select title from books where price = (select min(price) from books);

/*Query 10*/

select top 1 * from books order by product_id desc;




