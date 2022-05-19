select max(total_sum) sum, fullname from (
select sum(i.Total) total_sum, strftime('%Y', i.InvoiceDate) date, (e.LastName || ' ' || e.FirstName) as fullname
from Employee e
join Customer C on e.EmployeeId = C.SupportRepId
join Invoice I on C.CustomerId = I.CustomerId
where e.Title like '%sales%'
   or '%agent%'
group by fullname, date) where date = '2009'

