insert into
	sqlite5.t1
SELECT 
	id.id,
	(random()*(1000-10)+10)::int, -- >= 10 and < 25
	md5(random()::text)
FROM 
	generate_series(
		(select max(a1) + 1 from sqlite5.t1), 
		1000) as id;

insert into
	sqlite5.t5
SELECT 
	id.id,
	(random()*(1000-10)+10)::int, -- >= 10 and < 25
	md5(random()::text)
FROM 
	generate_series(
		(select max(a5) + 1 from sqlite5.t5), 
		1000) as id;
		
insert into
	sqlite5.t10
SELECT 
	id.id,
	(random()*(1000-10)+10)::int, -- >= 10 and < 25
	md5(random()::text)
FROM 
	generate_series(
		(select max(a10) + 1 from sqlite5.t10), 
		1000) as id;
		
		
insert into
	sqlite5.t15
SELECT 
	id.id,
	(random()*(1000-10)+10)::int, -- >= 10 and < 25
	md5(random()::text)
FROM 
	generate_series(
		(select max(a15) + 1 from sqlite5.t15), 
		1000) as id		;

		
insert into
	sqlite5.t20
SELECT 
	id.id,
	(random()*(1000-10)+10)::int, -- >= 10 and < 25
	md5(random()::text)
FROM 
	generate_series(
		(select max(a20) + 1 from sqlite5.t20), 
		1000) as id	;	

insert into
	sqlite5.t25
SELECT 
	id.id,
	(random()*(1000-10)+10)::int, -- >= 10 and < 25
	md5(random()::text)
FROM 
	generate_series(
		(select max(a25) + 1 from sqlite5.t25), 
		1000) as id;

insert into
	sqlite5.t30
SELECT 
	id.id,
	(random()*(1000-10)+10)::int, -- >= 10 and < 25
	md5(random()::text)
FROM 
	generate_series(
		(select max(a30) + 1 from sqlite5.t30), 
		1000) as id	;	

insert into
	sqlite5.t35
SELECT 
	id.id,
	(random()*(1000-10)+10)::int, -- >= 10 and < 25
	md5(random()::text)
FROM 
	generate_series(
		(select max(a35) + 1 from sqlite5.t35), 
		1000) as id;

insert into
	sqlite5.t40
SELECT 
	id.id,
	(random()*(1000-10)+10)::int, -- >= 10 and < 25
	md5(random()::text)
FROM 
	generate_series(
		(select max(a40) + 1 from sqlite5.t40), 
		1000) as id	;	

insert into
	sqlite5.t45
SELECT 
	id.id,
	(random()*(1000-10)+10)::int, -- >= 10 and < 25
	md5(random()::text)
FROM 
	generate_series(
		(select max(a45) + 1 from sqlite5.t45), 
		1000) as id;

insert into
	sqlite5.t50
SELECT 
	id.id,
	(random()*(1000-10)+10)::int, -- >= 10 and < 25
	md5(random()::text)
FROM 
	generate_series(
		(select max(a50) + 1 from sqlite5.t50), 
		1000) as id	;	

insert into
	sqlite5.t55
SELECT 
	id.id,
	(random()*(1000-10)+10)::int, -- >= 10 and < 25
	md5(random()::text)
FROM 
	generate_series(
		(select max(a55) + 1 from sqlite5.t55), 
		1000) as id;