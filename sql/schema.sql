drop table if exists beers;
drop table if exists breweries;

create table breweries (
	id serial primary key not null,
	name varchar(200),
	street_address varchar(200),
	zip_code int,
	austin_area varchar(50),
	untappd_website varchar(255),
	latitude float,
	longitude float,
	avg_beer_rating float,
	total_rating_count int	
);

create table beers (
	id serial primary key not null,
	brewery_id int not null,
	foreign key (brewery_id) references breweries(id),
	name varchar(200),
	type varchar(200),
	abv float,
	ibu float,
	rating float,
	rating_count int
);

