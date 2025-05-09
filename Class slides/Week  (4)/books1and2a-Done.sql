drop table Books;
create table Books (
   ISBN char(10),
   firstName varchar2(15),
   lastName varchar2(15),
   title varchar2(30) Not Null,
   copyright number(4,0),
   price number(5,2),
   Constraint Books_PK Primary Key (ISBN),
   Constraint Books_UQ Unique(Title)
);

insert into Books values('0553144286', 'Robert', 'Silverberg', 'Lord Valentines Castle', 1979, 23.99);
insert into Books values('0345284267', 'Anne', 'McCaffrey', 'Dragonflight', 1968, 14.75);
insert into Books values('0345281950', 'Robert', 'Heinlein', 'Tunnel in the Sky', 1955, 2.32);
insert into Books values('0450005739', 'Robert', 'Heinlein', 'Starship Troopers', 1959, 7.88);
insert into Books values('0345305507', 'Stephen', 'Donaldson', 'The One Tree', 1982, 41);
insert into Books values('0345291972', 'Arthur', 'Clarke', 'Rendezvous With Rama', 1973, 75.02);
insert into Books values('0380009145', 'Isaac', 'Asimov', 'Foundation', 1951, 16.84);
insert into Books values('0345315715', 'Isaac', 'Asimov', 'The Robots of Dawn', 1983, 33.5);
insert into Books values('0553288091', 'Isaac', 'Asimov', 'The End of Eternity', 1955, 17.85);
insert into Books values('0425086704', 'John', 'Varley', 'Titan', 1979, 50);
insert into Books values('0440111498', 'Kurt', 'Vonnegut', 'Cats Cradle', 1963, 89.25);

select * from Books;

delete from Books
where lastName = 'Varley';
select * from Books;

update Books set price = price * 1.05;
select * from Books;

update Books set price = price + 100
where title = 'Foundation';
select * from Books;