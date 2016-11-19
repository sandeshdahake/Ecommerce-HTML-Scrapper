SET SQL_SAFE_UPDATES=0;

update products p,
(select min(id),productid,url from productimages group by productid) i
set p.image = i.url
where p.id= i.productid

update compareBlank.products
set isActive =0
where image = 'test'
