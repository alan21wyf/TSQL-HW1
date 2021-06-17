use AdventureWorks2019
go

--#1
select p.ProductID, p.Name, p.Color, p.ListPrice
from Production.Product p

--#2
select p.ProductID, p.Name, p.Color, p.ListPrice
from Production.Product p
where p.ListPrice = 0

--#3
select p.ProductID, p.Name, p.Color, p.ListPrice
from Production.Product p
where p.Color is null

--#4
select p.ProductID, p.Name, p.Color, p.ListPrice
from Production.Product p
where p.Color is not null

--#5
select p.ProductID, p.Name, p.Color, p.ListPrice
from Production.Product p
where p.Color is not null and p.ListPrice > 0

--#6
select CONCAT(p.Name, ' ', p.Color)
from Production.Product p
where p.Color is not null

--#7
select CONCAT('NAME: ', p.Name, ' -- COLOR: ', p.Color) as [Name And Color]
from Production.Product p
where p.Color is not null

--#8
select p.ProductID, p.Name
from Production.Product p
where p.ProductID between 400 and 500

--#9
select p.ProductID, p.Name, p.Color
from Production.Product p
where p.Color in ('black', 'blue')

--#10
select p.Name
from Production.Product p
where p.Name like 's%'

--#11
select p.Name Name, p.ListPrice ListPrice
from Production.Product p
where p.Name like 's%'
order by Name

--#12
select p.Name Name, p.ListPrice ListPrice
from Production.Product p
where p.Name like '[a, s]%'
order by Name

--#13
select p.Name Name
from Production.Product p
where p.Name like 'spo%' and p.Name not like '___k%'
order by Name


--#14
select distinct p.Color
from Production.Product p
order by p.Color desc

--#15
select distinct p.ProductSubcategoryID ProductSubcategoryID, p.Color Color
from Production.Product p
where ProductSubcategoryID is not null and Color is not null

--#16
SELECT ProductSubCategoryID
      , LEFT([Name],35) AS [Name]
      , Color, ListPrice 
FROM Production.Product
WHERE Color not IN ('Red','Black') 
      OR Color IN ('Red','Black') AND ListPrice BETWEEN 1000 AND 2000 AND ProductSubCategoryID = 1
ORDER BY ProductSubCategoryID


--#17
select distinct ProductID, ProductSubcategoryID, Name, Color, ListPrice
from Production.Product 
where Color is not null and ProductSubcategoryID between 1 and 14
	and Name like '[HL, Road, Mountain]%'
order by ProductSubcategoryID desc, ListPrice desc