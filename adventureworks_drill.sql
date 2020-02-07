use AdventureWorks2014
GO
CREATE PROCEDURE dbo.GetContactInfo 
@City nvarchar(30) = NULL,
@LastName nvarchar(30) = NULL
AS
SELECT
a1.FirstName, a1.LastName, a3.City, a4.PhoneNumber
from Person.Person a1
inner join person.BusinessEntityAddress a2 on a2.BusinessEntityID = a1.BusinessEntityID
inner join person.Address a3 on a3.AddressID = a2.BusinessEntityID
inner join person.PersonPhone a4 on a4.BusinessEntityID = a1.BusinessEntityID
where City like @City +'%' and LastName like @LastName + '%'


Exec [dbo].[GetContactInfo] @City = 'Portland', @LastName = M