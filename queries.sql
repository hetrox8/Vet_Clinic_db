/*Queries that provide answers to the questions from all projects.*/

SELECT * from animals WHERE name LIKE '%mon';
SELECT name from animals WHERE date_of_birth BETWEEN '2016-01-01' AND '2019-12-31';
SELECT * FROM animals WHERE neutered = TRUE AND escape_attempts < 3;
SELECT date_of_birth FROM animals WHERE name IN ('Agumon', 'Pikachu');
SELECT name, escape_attempts FROM animals WHERE weight_kg > 10.5;
SELECT * FROM animals WHERE neutered = TRUE;
SELECT * FROM animals WHERE name <> 'Gabumon';
SELECT * FROM animals WHERE weight_kg >= 10.4 AND weight_kg <= 17.3;


delete from animals where date_of_birth > '2022-01-01';
DELETE 1

savepoint sp3;
SAVEPOINT

update animals set weight_kg = weight_kg * -1;
UPDATE 10

rollback to sp3;
ROLLBACK

update animals set weight_kg = weight_kg * -1 where weight_kg < 0;
UPDATE 4
commit;

SELECT COUNT(*) AS total_animals FROM animals;

select count(*) as animals_never_escape from animals where escape_attempts = 0;

select avg(weight_kg) as average_weight from animals; 

SELECT neutered, SUM(escape_attempts) AS total_escape_attempts FROM animals GROUP BY neutered ORDER BY total_escape_attempts DESC LIMIT 1;

SELECT species, MIN(weight_kg) AS min_weight, MAX(weight_kg) AS max_weight FROM animals GROUP BY species;

SELECT species, AVG(escape_attempts) AS avg_escape_attempts FROM (SELECT species, COUNT(*) AS escape_attempts FROM animals WHERE date_of_birth BETWEEN '1990-01-01' AND '2000-12-31' GROUP BY species) AS subquery GROUP BY species;