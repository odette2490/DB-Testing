-- Returnarea tuturor valorilor din tabela:
select * from owners;
select * from pets;
select * from appointments;

-- Returnarea unor anumite coloane din tabela:
select FirstName, LastName, Email from owners;
select PetName,Species,Breed from pets;
select OwnerID, AppointmentDate,Reason from appointments;

-- Filtrare valori folosind WHERE
-- Filtrare valori folosind LIKE
-- Filtrare valori folosind AND si OR
-- Filtrare valori folosind ORDER BY
-- Filtrare valori folosind GROUP BY
-- Filtrare valori folosind JOIN


from farmavethelp.owners
where FirstName = 'Ion';

