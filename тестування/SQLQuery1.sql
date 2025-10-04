create table CalcTests
go
use CalcTests
go

create table GetPriorityData
(
    Id int identity primary key,
    Input nvarchar(10) not null,
    ExpectedPriority int not null,
    Description nvarchar(200) null
);

insert into GetPriorityData (Input, ExpectedPriority, Description)
values 
('+', 1, 'Addition'),
('-', 1, 'Subtraction'),
('*', 2, 'Multiplication'),
('/', 2, 'Division'),
('mod', 2, 'Modulo'),
('p', 3, 'Unary plus (p)'),
('m', 3, 'Unary minus (m)'),
('?', 0, 'Unknown operator');

select * from GetPriorityData
