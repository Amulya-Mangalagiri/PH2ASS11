create database ContentDb

use ContentDb
create table Articles
(ArticleId int primary key,
Title nvarchar(50),
Content nvarchar(50),
PublishDate datetime)

insert into Articles values (1,'Evolution of E-Commerce','AI','10/03/2000')
insert into Articles values (2,'Preserving Biodiversity','role of protected areas','02/10/2022')
insert into Articles values (3,'Power of Meditation','improves focus','13/08/2022')
insert into Articles values (4,'Blockchain Technology','blockchain works','15/05/2005')
insert into Articles values (5,'The Impact of Social Media on Mental Health','effects of social media','12/12/2022')
select * from Articles