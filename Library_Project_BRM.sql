
/*Database creation*/

create database db_library_test


/*table creation*/

create table library_branch (
branch_id int not null primary key identity(10,1),
branch_name varchar(30) not null,
branch_address varchar(50)
);



create table publisher (
publisher_id int not null primary key identity (500,1),
publisher_name varchar(30) not null,
publisher_address varchar(70),
publisher_phone varchar(15) not null,
);

create table books (
book_id varchar(10) not null primary key,
book_title varchar(50) not null,
book_publisher int not null foreign key references publisher(publisher_id)
);

create table book_copies (
book_id varchar(10) not null foreign key references books(book_id),
book_branch int not null foreign key references library_branch(branch_id),
branch_copies int not null
);
use db_library_test
 create table book_authors (
 book_id varchar(10) not null foreign key references books(book_id),
 author_name varchar(30) not null
 );

 create table borrowers (
 card_no int not null primary key identity(1010, 1),
 card_name varchar(30) not null,
 card_address varchar(70) not null,
 card_phone varchar(15) not null);

 create table book_loans (
 loan_id int primary key not null identity(10100,1),
 loan_branch int not null foreign key references library_branch(branch_id),
 loan_borrower int not null foreign key references borrowers(card_no),
 book_out varchar(10) foreign key references books(book_id),
 date_out date not null,
 date_due date not null
 );

 insert into publisher (publisher_name, publisher_address, publisher_phone)
 values
 ('Everview', 'New York, NY', '812-555-5123'),
 ('Clearwaters', 'Seattle, WA','206-555-9836'),
 ('Greenpress', 'Nashville, TN', '926-555-0043'),
 ('Bridgetown Press', 'Portland, OR', '503-555-5410');

 insert into library_branch (branch_name, branch_address)
 values
('Central', '1511 SW 10th, Portland'),
('Uptown', '329 NW Pine St, Portland'),
('Sharpstown', '11213 S Pike Ln, Sharpstown'),
('Valleyview', '8466 E Bragg St, Valleyview');

insert into books (book_id, book_title, book_publisher)
values
('KO751', 'The lost tribe', 503),
('SW205', 'The Red Shore', 502),
('SW095', 'Adventures in Space', 500),
('BT863', 'The Blue Book part 2', 501),
('SK765', 'It', 503),
('SK612', 'The Shining', 503),
('LM177', 'Seeing Red', 503),
('AA234', 'Wonderful Silly Thing', 501),
('JS764', 'Lets talk about Weight', 500),
('WP093', 'Money and You', 500),
('RC531', 'How to build a treee house', 500),
('BT803', 'The upside of down', 500),
('GA443', 'Wheres Harry?', 502),
('TR936', 'Chasing the night', 503),
('HE750', 'Maps of America', 502),
('AA549', 'Crazy Crazy Crazy', 501),
('RC936', 'Fix This', 500),
('LM750', 'Count to 3', 503),
('HE187', 'Building the West', 502),
('TR226', 'The Master Apprentice', 501),
('MB339', 'Whats up Chuck?', 500),
('MB276', 'Went to the stars', 501);

insert into book_authors (book_id, author_name)
values
('KO751', 'Kelly Overton'),
('AA234', 'Aaron Anderson'),
('AA549', 'Aaron Anderson'),
('BT803', 'Brady Turner'),
('BT863', 'Brady Turner'),
('GA443', 'George Abott'),
('HE187', 'Heather Edwards'),
('HE750', 'Heather Edwards'),
('JS764', 'Jared Smith'),
('LM177', 'Linda Miller'),
('LM750', 'Linda Miller'),
('MB276', 'Mario Bareto'),
('MB339', 'Mario Bareto'),
('RC531', 'Reed Clark'),
('RC936', 'Reed Clark'),
('SK612', 'Stephen King'),
('SK765', 'Stephen King'),
('SW095', 'Sally Weathers'),
('SW205', 'Sally Weathers'),
('TR226', 'Tori Reynolds'),
('TR936', 'Tori Reynolds'),
('WP093', 'Wade Pierce');

insert into book_copies (book_ID, book_branch, branch_copies)
values
('AA234',  11, 2),
('AA549',  11, 4),
('BT803',  11, 2),
('BT863',  11, 4),
('GA443',  11, 1),
('HE187',  11, 3),
('HE750',  11, 4),
('JS764',  11, 2),
('KO751',  11, 1),
('LM177',  11, 2),
('LM750',  11, 3),
('MB276',  11, 2),
('MB339',  11, 0),
('RC531',  11, 0),
('RC936',  11, 3),
('SK612',  11, 2),
('SK765',  11, 3),
('SW095',  11, 1),
('SW205',  11, 2),
('TR226',  11, 3),
('TR936',  11, 0),
('WP093',  11, 0),
('AA234',  12, 4),
('AA549',  12, 2),
('BT803',  12, 4),
('BT863',  12, 1),
('GA443',  12, 2),
('HE187',  12, 3),
('HE750',  12, 0),
('JS764',  12, 0),
('KO751',  12, 0),
('LM177',  12, 2),
('LM750',  12, 3),
('MB276',  12, 1),
('MB339',  12, 2),
('RC531',  12, 3),
('RC936',  12, 1),
('SK612',  12, 1),
('SK765',  12, 2),
('SW095',  12, 2),
('SW205',  12, 2),
('TR226',  12, 2),
('TR936',  12, 2),
('WP093',  12, 4),
('AA234',  10, 3),
('AA549',  10, 2),
('BT803',  10, 2),
('BT863',  10, 1),
('GA443',  10, 1),
('HE187',  10, 1),
('HE750',  10, 0),
('JS764',  10, 2),
('KO751',  10, 2),
('LM177',  10, 4),
('LM750',  10, 2),
('MB276',  10, 1),
('MB339',  10, 1),
('RC531',  10, 0),
('RC936',  10, 3),
('SK612',  10, 2),
('SK765',  10, 2),
('SW095',  10, 1),
('SW205',  10, 0),
('TR226',  10, 0),
('TR936',  10, 1),
('WP093',  10, 2),
('AA234',  13, 0),
('AA549',  13, 3),
('BT803',  13, 4),
('BT863',  13, 1),
('GA443',  13, 2),
('HE187', 13, 0),
('HE750', 13, 2),
('JS764', 13, 1),
('KO751', 13, 0),
('LM177', 13, 2),
('LM750', 13, 2),
('MB276', 13, 1),
('MB339', 13, 0),
('RC531', 13, 0),
('RC936', 13, 1),
('SK612',  13, 4),
('SK765', 13, 2),
('SW095', 13, 1),
('SW205', 13, 0),
('TR226', 13, 1),
('TR936', 13, 2),
('WP093', 13, 6);

insert into borrowers (card_name, card_address, card_phone)
values
('Kathy Taylor', 'Portland', '503-555-3956'),
('Betty White', 'Portland', '503-555-3955'),
('Kim Rodgers', 'Portland', '503-555-3976'),
('Jeff Blom', 'Portland', '503-555-3356'),
('Greg Larson', 'Portland', '503-555-3346'),
('Brittany Murdock', 'Portland', '503-555-3916'),
('Fernando Gomez', 'Portland', '503-555-3906'),
('James Cook', 'Portland', '503-555-3907'),
('Lisa Thomas', 'Valleyview', '515-555-0043'),
('Allen Novak', 'Valleyview', '515-555-0053'),
('Melissa Freeman', 'Valleyview', '515-555-0543'),
('Ashely Mathers', 'Sharpstown', '413-555-9563'),
('William Blake', 'Sharpstown', '413-555-8863'),
('Cory Andrews', 'Sharpstown', '413-555-6663'),
('Kurtis Welch', 'Sharpstown', '413-034-5555');


insert into book_loans (book_out, loan_branch, loan_borrower, date_out, date_due)
values
('AA234', 10, 1010, '5/11/2019', '5/26/2019'),
('AA549', 10, 1010, '5/12/2019',  '5/27/2019'),
('BT803', 10, 1010, '5/13/2019', '5/28/2019'),
('BT863', 11,1010, '5/14/2019', '5/29/2019'),
('GA443', 11,1010, '10/25/2019', '11/7/2019'),
('HE187', 11,1015, '10/26/2019', '11/8/2019'),
('HE750', 11,1016, '10/27/2019', '11/9/2019'),
('JS764', 11,1017, '10/28/2019', '11/10/2019'),
('KO751', 12,1017, '10/29/2019', '11/11/2019'),
('LM177', 12,1017, '10/30/2019', '11/12/2019'),
('LM750', 12,1017, '9/3/2019', '9/17/2019'),
('MB276', 12,1021, '9/4/2019', '9/18/2019'),
('MB339', 12,1022, '9/5/2019', '9/19/2019'),
('RC531', 12,1023, '9/6/2019', '9/20/2019'),
('RC936', 13,1010, '9/7/2019', '9/21/2019'),
('SK612', 13,1011, '1/14/2020', '1/31/2020'),
('SK765', 13,1012, '1/15/2020', '2/1/2020'),
('SW095', 13,1012, '1/16/2020', '2/2/2020'),
('SW205', 13,1012, '1/17/2020', '2/3/2020'),
('TR226', 10,1012, '1/18/2020', '2/4/2020'),
('TR936', 10,1012, '1/19/2020', '2/4/2020'),
('WP093', 10,1017, '1/20/2020', '2/4/2020'),
('AA234', 10,1018, '1/30/2020', '2/4/2020'),
('AA549', 10,1019, '1/31/2020', '2/4/2020'),
('BT803', 10,1020,'2/1/2020', '2/4/2020'),
('BT863', 10,1021,'2/2/2020', '2/14/2020'),
('GA443', 10,1022,'2/3/2020', '2/14/2020'),
('HE187', 10,1023,'2/3/2020', '2/14/2020'),
('HE750', 11,1023,'2/3/2020', '2/14/2020'),
('JS764', 11,1023,'2/3/2020', '2/14/2020'),
('KO751', 11,1023, '10/1/2019', '10/10/2019'),
('LM177', 11,1023, '10/2/2019', '10/11/2019'),
('LM750', 11,1023, '10/3/2019', '10/12/2019'),
('MB276', 11,1015, '10/4/2019', '10/12/2019'),
('MB339', 12,1016, '10/5/2019', '10/12/2019'),
('RC531', 12,1017, '10/6/2019', '10/12/2019'),
('RC936', 12,1018, '6/18/2019', '10/12/2019'),
('SK612', 12,1019, '6/19/2019', '6/30/2019'),
('SK765', 12,1020, '6/20/2019', '6/30/2019'),
('SW095', 12,1021, '6/21/2019', '6/30/2019'),
('SW205', 13,1022, '6/22/2019', '6/30/2019'),
('TR226', 13,1022, '6/23/2019', '6/30/2019'),
('TR936', 13,1022, '6/24/2019', '7/18/2019'),
('WP093', 13,1022, '6/2/2019', '6/19/2019'),
('AA234', 13,1022, '8/6/2019', '8/14/2019'),
('AA549', 13,1013, '8/7/2019', '8/15/2019'),
('BT803', 12,1014, '8/8/2019', '8/16/2019'),
('BT863', 12,1015, '8/9/2019', '8/31/2019'),
('GA443', 12,1016, '8/10/2019', '9/1/2019'),
('HE187', 12,1017, '8/11/2019', '9/2/2019'),
('HE750', 10,1018, '8/12/2019', '8/20/2019'),
('JS764', 10,1019, '8/13/2019', '8/20/2019'),
('KO751', 10,1020, '8/14/2019', '8/20/2019'),
('LM177', 10,1021, '8/15/2019', '8/20/2019'),
('LM750', 11,1022, '8/16/2019', '8/20/2019'),
('MB276', 11,1023, '8/17/2019', '9/1/2019');

/*****Query Questions *******
for all queries with 'today's date' please use '2020-02-03'*/

/****1****/
/* original query - 
select a1.book_title, a1.book_id, a2.branch_copies
from books a1
inner join book_copies a2 on a2.book_id = a1.book_id
inner join library_branch a3 on a3.branch_id = a2.book_branch
where book_title like '%lost%' and branch_name like 'sh%'
*/

create procedure CopiesInBranch
@book_title varchar(30), @branch_name varchar(30)
as
select a1.book_title, a1.book_id, a3.branch_name, a2.branch_copies
from books a1
inner join book_copies a2 on a2.book_id = a1.book_id 
inner join library_branch a3 on a3.branch_id = a2.book_branch
where book_title like '%' + @book_title + '%' and branch_name like @branch_name + '%'

exec [dbo].[CopiesInBranch]
@book_title = 'the lost', @branch_name = 'sharp'

/***********************************************/
/*2*/
/*orig query
select a1.book_title, a1.book_id, a2.branch_copies, a3. branch_name
from books a1
inner join book_copies a2 on a2.book_id = a1.book_id
inner join library_branch a3 on a3.branch_id = a2.book_branch
where book_title like '%lost%'
*/

create procedure BookCopyByBranch
@book_title nvarchar(30)
as
select 
a1.book_title, a1.book_id, a2.branch_copies, a3. branch_name
from books a1
inner join book_copies a2 on a2.book_id = a1.book_id
inner join library_branch a3 on a3.branch_id = a2.book_branch
where book_title like '%' + @book_title + '%'

exec [dbo].[BookCopyByBranch]
@book_title = 'the lost'


/**************************/
/*3 - all borrowers without books */

/*original query 

SELECT card_name
FROM borrowers
WHERE not EXISTS
(SELECT loan_borrower FROM book_loans WHERE borrowers.card_no = book_loans.loan_borrower);
*/

create procedure NoBooksOut_test
as
SELECT card_name
FROM borrowers
WHERE not EXISTS
(SELECT loan_borrower FROM book_loans WHERE borrowers.card_no = book_loans.loan_borrower);

exec [dbo].[NoBooksOut_test]


/***************************************/
/*4*/
/* orig query
select a1.card_name, a1.card_address, a3.book_title, a4.branch_name
from borrowers a1
inner join book_loans a2 on a2.loan_borrower = a1.card_no
inner join books a3 on a3.book_id = a2.loaned_book
inner join library_branch a4 on a4.branch_id = a2.loan_branch
where branch_name like 'sh%' and date_due = '2020-02-03'
*/
create procedure DueTodaybyBranch
@date_due date, @branch_name varchar(30)
as
select a1.card_name, a1.card_address, a3.book_title, a4.branch_name
from borrowers a1
inner join book_loans a2 on a2.loan_borrower = a1.card_no
inner join books a3 on a3.book_id = a2.book_out
inner join library_branch a4 on a4.branch_id = a2.loan_branch
where branch_name like @branch_name + '%' and date_due like @date_due

exec [dbo].[DueTodaybyBranch]
@branch_name = sharp, @date_due = '2020-02-04'


/*****************************************/
/*5*/
/*original query
select COUNT(a1.loan_id) as number_of_loans, a2.branch_name
from book_loans a1
inner join library_branch a2 on a2.branch_id = loan_branch
where date_due >= '2020-02-03'
group by loan_branch, branch_name
*/
create proc TotalBooksOut
@date_due date
as
select COUNT(a1.loan_id) as number_of_loans, a2.branch_name
from book_loans a1
inner join library_branch a2 on a2.branch_id = loan_branch
where date_due >= @date_due
group by loan_branch, branch_name

exec [dbo].[TotalBooksOut]
@date_due = '2020-02-03'


/****************************************/
/*6*/
/*original query
select COUNT(loan_id) as total_out, a2.card_name, a2.card_address, a2.card_phone
from book_loans a1
inner join borrowers a2 on a2.card_no = a1.loan_borrower
where date_due >= '2020-02-03'
group by card_name, card_address, card_phone
having count(loan_id) > 5
*/

create proc WhoCheckedOut_test2
@date_due date, @max_out int
as
select COUNT(loan_id) as total_out, a2.card_name, a2.card_address, a2.card_phone
from book_loans a1
inner join borrowers a2 on a2.card_no = a1.loan_borrower
where date_due >= @date_due
group by card_name, card_address, card_phone
having count(loan_id) > @max_out

exec [dbo].[WhoCheckedOut_test2]
@date_due = '2020-02-05', @max_out = 5

/***************************/
/*7*/
/*orig query
select a1.author_name, sum(a3.branch_copies) as number_books, a4.branch_name
from book_authors a1
inner join books a2 on a2.book_id = a1.book_id
inner join book_copies a3 on a3.book_id = a2.book_id
inner join library_branch a4 on a4.branch_id = a3.book_branch
where author_name like 'ste%'and branch_name like 'cen%'
group by author_name, branch_name
*/

create procedure CopiesbyBranchbyAuthor
@author_name varchar(30), @branch_name varchar(30)
as
select a1.author_name, sum(a3.branch_copies) as number_books, a4.branch_name
from book_authors a1
inner join books a2 on a2.book_id = a1.book_id
inner join book_copies a3 on a3.book_id = a2.book_id
inner join library_branch a4 on a4.branch_id = a3.book_branch
where author_name like '%' + @author_name + '%'and branch_name like '%' + @branch_name + '%'
group by author_name, branch_name

exec [dbo].[CopiesbyBranchbyAuthor]
@author_name = 'steph', @branch_name = 'cen'