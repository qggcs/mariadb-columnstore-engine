drop table if exists product;
drop table if exists product_tag;

create table product_tag (product_id bigint)engine=infinidb;

CREATE TABLE `product` (
`product_id` bigint(20) DEFAULT NULL,
`price` bigint(20) DEFAULT NULL,
`short_description` varchar(7998) DEFAULT NULL,
`brand` varchar(254) DEFAULT NULL,
`modified_dtm` datetime DEFAULT NULL,
`created_dtm` datetime DEFAULT NULL,
`modified_by` int(11) DEFAULT NULL
) ENGINE=InfiniDB DEFAULT CHARSET=latin1 ;

insert into product_tag values (1),(2),(3),(4);
insert into product values (1,22,'fes','rets','2011-12-12 12:12:12','2011-12-13 1:1:10',343);
insert into product values (3,22,'fes','rets','2011-12-12 12:12:12','2011-12-13 1:1:10',343);

update
product p join
(select product_id from product_tag limit 1000) t using (product_id)
set brand=p.product_id, price=555, modified_dtm='2011-12-15 15:15:30',
short_description=concat(short_description,modified_by);

select * from product;
drop table product;
drop table product_tag;

