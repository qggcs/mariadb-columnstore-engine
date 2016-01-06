drop table if exists bug3682;

create table bug3682(c1 datetime)engine=infinidb;

insert into bug3682 values
('2011-01-29 20:06:05'),
('2011-01-29 20:06:29'),
('2011-01-29 19:39:20'),
('2011-01-29 19:39:42'),
('2011-01-29 19:39:50'),
('2011-01-29 19:40:10'),
('2011-01-29 19:40:27'),
('2011-01-29 19:41:03'),
('2011-01-29 19:42:19'),
('2011-01-29 19:42:29'),
('2011-01-29 19:42:41'),
('2011-01-29 19:42:45'),
('2011-01-29 19:44:01'),
('2011-01-29 19:44:40'),
('2011-01-29 19:45:35'),
('2011-01-29 19:45:40'),
('2011-01-29 19:46:02'),
('2011-01-29 19:46:07'),
('2011-01-29 19:46:27'),
('2011-01-29 19:46:42'),
('2011-01-29 19:46:55'),
('2011-01-29 19:47:01'),
('2011-01-29 19:47:22'),
('2011-01-29 19:47:54'),
('2011-01-29 19:48:09'),
('2011-01-29 19:48:49'),
('2011-01-29 19:48:52'),
('2011-01-29 19:49:08'),
('2011-01-29 19:49:54'),
('2011-01-29 19:50:19'),
('2011-01-29 19:50:37'),
('2011-01-29 19:51:17'),
('2011-01-29 19:51:27'),
('2011-01-29 19:52:02'),
('2011-01-29 19:52:14'),
('2011-01-29 19:52:23'),
('2011-01-29 19:53:55'),
('2011-01-29 19:53:58'),
('2011-01-29 19:54:43'),
('2011-01-29 19:55:08'),
('2011-01-29 19:56:12'),
('2011-01-29 19:56:40'),
('2011-01-29 19:57:31'),
('2011-01-29 19:57:34'),
('2011-01-29 19:58:11'),
('2011-01-29 19:58:51'),
('2011-01-29 23:44:31'),
('2011-01-29 23:45:13'),
('2011-01-29 23:45:35'),
('2011-01-29 23:46:13');


select date(c1), count(*) from bug3682 group by 1 order by 1;
