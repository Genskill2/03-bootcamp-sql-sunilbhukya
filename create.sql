create table publisher(
	id integer primary key,
	name text,
	country text
	);
	
create table books(
	id integer primary key,
	title text,
	publisher integer references publisher(id)
	);

create table subjects(
	id integer primary key,
	name text
	);

create table books_subjects(
	book text references books(id),
	subject text references subjects(id)
	);
