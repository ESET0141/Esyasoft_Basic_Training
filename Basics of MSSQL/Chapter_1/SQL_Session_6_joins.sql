/*Chap -1 
Joins
1. Inner join
2. Left join
3. Right join
4. Cross join
*/

/*used joins in SQL*/
use EsyaDb;

/*Created 3 tables : Users, Books  and Orders
formed a relation between users, books and orders using foreign key 
*/

create table users (user_id int primary key , email varchar(20), name varchar(50));

create table books (product_id int primary key, title varchar(50), price float);

select * from books;

create table orders (order_no int primary key, user_id int, product_id int , 
foreign key (user_id) references users(user_id) , 
foreign key(product_id) references books (product_id));

/*Inserted data into the tables*/

insert into users values (1, 'callmebhai@gmail.com','GopalBhai');

insert into users values (2, 'toxicmanji@gmail.com','Majitmanji'), 
(3,'kalajadu@gmail.com','Soumyadeep'),
(4,'vimalpanmasala@gmail.com','Jaisai'),
(5,'ghostlaugh@gmail.com','Namitha');

alter table users alter column email varchar(50);

select * from users;

insert into books values (101, 'MS SQL', 100.0),
(102, 'Half Girlfriend', 699),
(103, 'BLack Magic', 700),
(104, 'How to Marfa', 2000), 
(105, 'How to Laugh', 2001.99);

insert into orders values (401, 1 , 101),
(402, 2 , 102),
(403, 2 , 103),
(404, 3 , 103),
(405, 3 , 104),
(406, 4 , 102),
(407, 5 , 102),
(408, 5 , 105);

/*Performed inner join amoung the tables using common user_id between users and orders and 
other inner join between books and orders using common product_id*/

/*used where clause for identifying who bought Black Magic and who bought the maxed priced book*/

select u.name , o.order_no, b.title
from users as u
inner join orders as o 
on u.user_id = o.user_id 
inner join books as b on b.product_id = o.product_id
where b.title = 'Black Magic';

select u.name , o.order_no, b.title
from users as u
inner join orders as o 
on u.user_id = o.user_id 
inner join books as b on b.product_id = o.product_id
where price = (select max(b.price) from books b);


