-- Returnarea tuturor datelor din tabela:
select * from owners;
select * from pets;
select * from appointments;

-- Returnarea unor anumite coloane din tabela.
-- (am folosit functia limit pentru a afisa doar primele 5 rezultate din tabela):
select FirstName, LastName, Email from owners limit 5;   
select PetName,Species,Breed from pets limit 5;
select OwnerID, AppointmentDate,Reason from appointments limit 5;

-- Filtrare valori folosind WHERE
-- Returnarea datelor unde FirstName este Mihai;
select * from owners where FirstName = 'Mihai';

-- Filtrare valori folosind LIKE
-- Returnarea datelor unde PetName incepe cu litera M
select * from pets where PetName like 'M%';

-- Returnarea datelor unde PetName se termina cu litera M
select * from pets where PetName like '%A';

-- Filtrare valori folosind AND si OR
-- Returnare datelor unde PetName incepe cu M si Species este Pisica.
select * from pets where PetName like 'M%' and Species = 'Pisica';
-- Returnare datelor unde PetName incepe cu M sau Species este Pisica.
select * from pets where PetName like 'M%' or Species = 'Pisica';

-- Filtrare valori folosind ORDER BY
-- Returnarea valorilo din col. PetName, Species, Breed 
-- si ordonarea lor in ordine alfabetica (asc-> de la A la Z)
select PetName , Species, Breed from pets order by PetName asc;

-- Filtrare valori folosind JOIN
-- Returnarea tuturor valorilor din ambele tabele (owners si pets)
-- a si b sunt ,,nick-names" pentru a fi mai usor de inteles joinul.
select * from owners a
join pets b on a.OwnerID = b.OwnerID limit 5;

-- Query folosind mai multe functii. 
select a.FirstName,a.LastName,a.Email,b.PetName, b.Species, b.Breed 
from owners a 
join pets b on a.OwnerID = b.OwnerID
where b.PetName like 'M%' and b.Species = 'Pisica'
order by PetName asc;



