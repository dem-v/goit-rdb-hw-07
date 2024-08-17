USE mydb;
-- ========================
-- Task 1
-- ========================
select id, date, year(date), month(date), day(date)
from orders
;
-- ========================
-- Task 2
-- ========================
SELECT id, date, date_add(date, INTERVAL 1 day)
FROM orders
;
-- ========================
-- Task 3
-- ========================
select id, date, UNIX_TIMESTAMP(date)
from orders
;
-- ========================
-- Task 4
-- ========================
select count(*)
from orders
where date between '1996-07-10 00:00:00' and '1996-10-08 00:00:00'
;
-- ========================
-- Task 5
-- ========================
select id, date, JSON_OBJECT('id', id, 'date', date)
from orders
;