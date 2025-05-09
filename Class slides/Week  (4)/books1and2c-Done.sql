-- projection query
select ISBN, title, copyright
from Books;

-- simple condition
select * 
from Books
where price <= 25;

-- multiple condition
select *
from Authors
where state = 'NY' or firstName = 'Anne';

-- extended projection
select 'Title: ' || title As description, price, 1.25 as tax
from Books;

-- SQL 2

-- Cartesian Join
select *
from Books cross join Authors;

-- Natural Join
select *
from Books natural join Authors;

-- Theta Join
select *
from Books B join Authors A
  on B.authorID = A.authorID
where (copyright < 1965 or price > 25)
order by A.lastname, A.firstname, B.title;

-- Eliminate duplicates
select distinct (copyright)
from Books
order by copyright desc;

-- Join
select *
from Books B join Authors A
   on B.authorID = A.authorID;

-- Left Join
select *
from Books B left join Authors A
   on B.authorID = A.authorID;

-- Right Join
select *
from Books B right join Authors A
   on B.authorID = A.authorID;

-- Full Join
select *
from Books B full join Authors A
   on B.authorID = A.authorID;
