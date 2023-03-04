--Gender Distribution
select Gender, count(gender)*100 /2000 as 'Percentage Gender Distribution'
from dbo.Sheet1$
group by Gender

--Age Distribution
select [Age Segment],COUNT([Age Segment]) * 100 / 2000 as 'Age Distribution'
from dbo.Sheet1$
group by [Age Segment]

--Country Targeting
select [Region], COUNT([Region]) *100 / 2000 as 'Country Targeting'
from dbo.Sheet1$
group by [Region]
order by 'Country Targeting' desc

--Page per Visit
select avg([Pages Viewed]) as 'Average Page Views per Visit'
from dbo.Sheet1$

--avg Duration Stayed
select avg([Duration Stayed]) as 'Avg Duration Stayed'
from dbo.Sheet1$

--Total Visits Last 3 Months
select  DATEPART(MONTH, [Date]) as Month,
		count(DATEPART(MONTH, [Date])) as 'Total Visits Last 3 Months'
into #total_visits
from dbo.Sheet1$
group by DATEPART(MONTH, [Date])
order by 1
