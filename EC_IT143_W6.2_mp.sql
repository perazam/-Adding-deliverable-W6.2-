--Question 1: Can you create a list of all tables in AdventureWorks that contain a column with the name: TerritoryID?

select T.Name, C.Name
	from sys.all_columns as C
	join sys.tables as T
	on C.object_id = T.object_id
	where C.Name like '%TerritoryID%'

	-- Question 2: I am interested in time management on the assembly line. What 3 bikes take most time to assemble?

select [Name], [ProductModelID], [DaysToManufacture]
	from [Production].[Product]
	order by [DaysToManufacture] desc

	-- Question 3: What are the top 20 most expensive products we sell?

select top 20 [Name], [ListPrice]
	from [Production].[Product]
	order by [ListPrice] desc

	--Question 4: Can you create a list of all the tables in AdventureWorks that contain a column with the name ProductID?

select T.Name, C.Name
	from sys.all_columns as C
	join sys.tables as T
	on C.object_id = T.object_id
	where C.Name like '%ProductID%'

	-- Question 5: I need the person table organized better. Can you return all rows and a subset of the columns (FirstName, LastName, businessentityid) 
-- from the person table in the AdventureWorks database.  The third column heading is renamed to Employee_id. 
-- Arranged the output in ascending order by lastname

select [FirstName], [LastName], [BusinessEntityID] as Employee_id
	from [Person].[Person]
	order by [LastName] asc

	-- Question 6: We are alwalys looking for feedback for us to improve our products. Could you put together a list that shows the top 3 products that have the
-- most reviews. We want the Products name, when it was ordered, and the average rating it has. (Unsure of the solution below.)

select top 3 [ProductID], [ReviewDate], [Rating]
	from [Production].[ProductReview]

	- Question 7: What products cost the least to produce?

select [Name], [StandardCost]
	from [Production].[Product]
	order by [StandardCost] asc;

-- Question 7:  One of our customers claims that they ordered quantity of five on Order ID 5176 and they only received three. 
-- The order had no discount as well. Can you show the full order information that we can conform the order and see if the customer is being honest?

select [SalesOrderDetailID], [OrderQty], [UnitPrice], [UnitPriceDiscount]
	from [Sales].[SalesOrderDetail]
	where [SalesOrderDetailID]=5176

