-- 1.Qestion's Answer
	SELECT InvoiceId, CustomerId, Total
	FROM invoices
	ORDER by CustomerId, total DESC ;
-- 2.Qestion's Answer
	SELECT InvoiceId, CustomerId, Total
	FROM invoices
	ORDER by  total DESC, CustomerId;
--3.Question's Answer
	/*1. sorguda customerıd nın en az olduğu sayıdan başlayarak
	o sayıyı kendi içinde total değerlerini çoktan aza doğru sıralar. customerıd 
	artarak devam eder.
	2. sorguda ilk total değeri çoktan aza doğru sıralar ve total değeri 
	aynı olanları kendi içinde customerıd si azdan çok olana doğru sıralama yapar.*/
-- 4. Question's Answer
	SELECT *
	FROM invoices
	WHERE total>= 10
	LIMIT 10;
-- 5. Question's Answer
	SELECT *
	FROM invoices
	WHERE total<=10
	LIMIT 5;
-- 6. Qestion's Answer
	SELECT *
	FROM tracks
	WHERE name like 'B%s';
-- 7. Question's Answer
	SELECT *
	FROM invoices
	WHERE BillingCountry in ('USA', 'Germany', 'Norway', 'Canada')
	and InvoiceDate like '%2010%'
	ORDER by InvoiceDate DESC;
	
	
	