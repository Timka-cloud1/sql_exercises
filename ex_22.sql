select BillingCountry, sum(total) as total from Invoice
group by BillingCountry order by total desc; 
