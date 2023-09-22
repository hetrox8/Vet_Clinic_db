/* Database schema to keep the structure of entire database. */
 
create table owners (
id serial primary key,
full_name varchar(35),
age int not null
 );

create table species (
id serial primary key,
name varchar(30)
 );

alter table animals
drop column species;

alter table animals add column species_id int references species(id);
alter table animals add column owner_id int references owners(id);
