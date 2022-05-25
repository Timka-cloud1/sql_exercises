select strftime('%Y', InvoiceDate), sum(total) from Invoice 
where strftime('%Y', InvoiceDate) = '2009' or strftime('%Y', InvoiceDate) = '2011'
group by strftime('%Y', InvoiceDate);
