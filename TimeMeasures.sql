drop table if exists Dimension.TimeMeasures
go

create table Dimension.TimeMeasures
(TimeMeasuresID INT IDENTITY(1,1)
, TimeMeasureName VARCHAR(250)
)

insert into Dimension.TimeMeasures
values ('Current')
, ('Month Over Month Growth	')
, ('Prior Month	')
, ('Prior Month % Change')
, ('Same Month Last Year')
, ('Same Month Last Year % Change')
, ('Same Month Last Year Growth')
