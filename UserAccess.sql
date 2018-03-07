drop table if exists Dimension.UserAccess
go

create table Dimension.UserAccess
(UserAccessID INT IDENTITY(1,1) CONSTRAINT pkUserAccess PRIMARY KEY (UserAccessID)
, UserName VARCHAR(250)
, FilterField VARCHAR(250)
, FilterValue VARCHAR(250)
)

insert into Dimension.UserAccess
values ('demo\jspringer','Sales Territory','Mideast')

select * from Dimension.UserAccess


create or alter view Dimension.UserAccess_City
AS
select [City Key]
, [UserAccessID]
FROM Dimension.UserAccess ua
JOIN Dimension.City c ON c.[Sales Territory] = ua.FilterValue and ua.FilterField = 'Sales Territory'


SELECT * FROM Dimension.UserAccess_City