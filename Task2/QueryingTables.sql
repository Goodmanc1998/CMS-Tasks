Select sum(case when ProductName = 'Composite Door' then 1 else 0 end) as TotalDoors, sum(case when ProductName = 'Reversible' or ProductName = 'Casement' then 1 else 0 end) as TotalWindows,
	Heading.DateInProduction, Month(Heading.DateInProduction) as 'Month', Year(Heading.DateInProduction) as 'Year'
from Production
inner join Heading on Production.JobKeyID = Heading.JobKeyID
group by Heading.DateInProduction
order by sum(case when ProductName = 'Composite Door' then 1 else 0 end) + sum(case when ProductName = 'Reversible' or ProductName = 'Casement' then 1 else 0 end) desc