readme.txt

# Baza de date pentru cabinetul veterinar

Acest fișier descrie pașii necesari pentru crearea și popularea unei baze de date pentru un cabinet veterinar. Baza de date conține trei tabele: Owners, Pets și Appointments.

# Tool Folosit : MYSQL Workbench 8.0 

## Pașii creării bazei de date

### 1.Crearea bazei de date

Creează baza de date folosind comanda:

CREATE DATABASE farmavethelp;

-- Creare baza de date:
Create Database FarmaVetHelp;


### 2.Crearea tabelelor

-- Creare tabela Owners (OwnerID este primary key pentru aceasta tabela. 
-- Aceasta este foreign Key in Tabela Appointments.)

CREATE TABLE Owners (
    OwnerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    PhoneNumber VARCHAR(20),
    Email VARCHAR(100)
);

-- Creare Tabela Pets: (OwnerID este Foreign key in tabela pets care face 
-- legatura cu primary key OwnerID din tabela owners. PetID este primary key 
-- pentru aceasta tabela. Aceasta este foreign Key in Tabela Appointments.)

CREATE TABLE Pets (
    PetID INT PRIMARY KEY,
    OwnerID INT,
    PetName VARCHAR(50),
    Species VARCHAR(50),
    Breed VARCHAR(50),
    FOREIGN KEY (OwnerID) REFERENCES Owners(OwnerID)
);


-- Creare tabela Appointments (aceasta tabela sa creaza ultima, intrucat 
-- are 2 foreign keys, prin care se face relationarea la tabelele Owners si Pets)

CREATE TABLE Appointments (
    AppointmentID INT PRIMARY KEY,
    OwnerID INT,
    PetID INT,
    AppointmentDate DATE,
    Reason VARCHAR(100),
    FOREIGN KEY (OwnerID) REFERENCES Owners(OwnerID),
    FOREIGN KEY (PetID) REFERENCES Pets(PetID)
);

### 3.Inserarea datelor pentru teste (DML)
-- Dupa crearea tabelelor, am generat 20 de entries Random pentru fiecare tabela in parte dupa cum urmeaza. Ordinea rularii lor nu este importanta. 

INSERT INTO Pets (PetID, OwnerID, PetName, Species, Breed) VALUES
(1, 100, 'Rex', 'Câine', 'Ciobănesc German'),
(2, 101, 'Luna', 'Câine', 'Labrador'),
(3, 100, 'Miau', 'Pisică', 'Europeană Comună'),
(4, 102, 'Pufi', 'Câine', 'Bichon Maltez'),
(5, 103, 'Whiskers', 'Pisică', 'Persană'),
(6, 104, 'Max', 'Câine', 'Golden Retriever'),
(7, 105, 'Tom', 'Pisică', 'Siamieză'),
(8, 106, 'Bella', 'Câine', 'Beagle'),
(9, 107, 'Felix', 'Pisică', 'Ragdoll'),
(10, 108, 'Rocky', 'Câine', 'Rottweiler'),
(11, 109, 'Mimi', 'Pisică', 'Birmaneză'),
(12, 110, 'Coco', 'Câine', 'Cocker Spaniel'),
(13, 111, 'Tiger', 'Pisică', 'Bengaleză'),
(14, 112, 'Lucky', 'Câine', 'Ciobănesc Românesc Mioritic'),
(15, 113, 'Princess', 'Pisică', 'Angoră Turcească'),
(16, 114, 'Buddy', 'Câine', 'Bulldog Francez'),
(17, 115, 'Snowball', 'Pisică', 'Siberiană'),
(18, 116, 'Rosie', 'Câine', 'Shih Tzu'),
(19, 117, 'Oreo', 'Pisică', 'British Shorthair'),
(20, 118, 'Bailey', 'Câine', 'Boxer');

INSERT INTO Owners (OwnerID, FirstName, LastName, PhoneNumber, Email) VALUES
(100, 'Ion', 'Popescu', '0711-234-567', 'ion.popescu@example.com'),
(101, 'Maria', 'Ionescu', '0722-345-678', 'maria.ionescu@example.com'),
(102, 'Andrei', 'Popa', '0733-456-789', 'andrei.popa@example.com'),
(103, 'Elena', 'Dumitrescu', '0744-567-890', 'elena.dumitrescu@example.com'),
(104, 'Mihai', 'Constantin', '0755-678-901', 'mihai.constantin@example.com'),
(105, 'Ana', 'Radu', '0766-789-012', 'ana.radu@example.com'),
(106, 'Cristian', 'Gheorghiu', '0777-890-123', 'cristian.gheorghiu@example.com'),
(107, 'Laura', 'Stoica', '0788-901-234', 'laura.stoica@example.com'),
(108, 'Adrian', 'Munteanu', '0799-012-345', 'adrian.munteanu@example.com'),
(109, 'Simona', 'Tudor', '0710-123-456', 'simona.tudor@example.com'),
(110, 'Alexandru', 'Moldovan', '0721-234-567', 'alexandru.moldovan@example.com'),
(111, 'Andreea', 'Voicu', '0732-345-678', 'andreea.voicu@example.com'),
(112, 'Gabriel', 'Dumitru', '0743-456-789', 'gabriel.dumitru@example.com'),
(113, 'Mihaela', 'Gheorghe', '0754-567-890', 'mihaela.gheorghe@example.com'),
(114, 'Daniel', 'Stanciu', '0765-678-901', 'daniel.stanciu@example.com'),
(115, 'Raluca', 'Stefan', '0776-789-012', 'raluca.stefan@example.com'),
(116, 'Sorin', 'Marin', '0787-890-123', 'sorin.marin@example.com'),
(117, 'Irina', 'Dinu', '0798-901-234', 'irina.dinu@example.com'),
(118, 'Gabriela', 'Dobre', '0711-012-345', 'gabriela.dobre@example.com'),
(119, 'Stefan', 'Gavrila', '0722-123-456', 'stefan.gavrila@example.com');

-- Insert data into the Appointments table
INSERT INTO Appointments (AppointmentID, OwnerID, PetID, AppointmentDate, Reason) VALUES
(1, 100, 1, '2024-07-15', 'Vaccinare'),
(2, 101, 2, '2024-07-16', 'Consult anual'),
(3, 100, 3, '2024-07-17', 'Curățare dentară'),
(4, 102, 4, '2024-07-18', 'Tratament pentru paraziți'),
(5, 103, 5, '2024-07-19', 'Vaccinare'),
(6, 104, 6, '2024-07-20', 'Consult de rutină'),
(7, 105, 7, '2024-07-21', 'Control de sănătate'),
(8, 106, 8, '2024-07-22', 'Tratament pentru infecție'),
(9, 107, 9, '2024-07-23', 'Vaccinare'),
(10, 108, 10, '2024-07-24', 'Consult de urgență'),
(11, 109, 11, '2024-07-25', 'Examinare fizică'),
(12, 110, 12, '2024-07-26', 'Vaccinare'),
(13, 111, 13, '2024-07-27', 'Consult anual'),
(14, 112, 14, '2024-07-28', 'Tratament pentru alergii'),
(15, 113, 15, '2024-07-29', 'Vaccinare'),
(16, 114, 16, '2024-07-30', 'Consult de rutină'),
(17, 115, 17, '2024-07-31', 'Control de sănătate'),
(18, 116, 18, '2024-08-01', 'Tratament pentru răni'),
(19, 117, 19, '2024-08-02', 'Vaccinare'),
(20, 118, 20, '2024-08-03', 'Consult de urgență');

-- Actualizarea Prenumelui pentru userul cu Idul de owner 100 : Ion -> Mihai
update owners set FirstName = 'Mihai' where Ownerid = 100;
-- Stergea intrarii din tabela appointments, care are PetID = 1
delete from appointments where PetId = '1';

### 4.Interogarea datelor (DQL)

 ## SELECT * 
-- Returnarea tuturor datelor din tabela:
select * from owners;
select * from pets;
select * from appointments;

-- Returnarea unor anumite coloane din tabela.
-- (am folosit functia limit pentru a afisa doar primele 5 rezultate din tabela):
select FirstName, LastName, Email from owners limit 5;   
select PetName,Species,Breed from pets limit 5;
select OwnerID, AppointmentDate,Reason from appointments limit 5;

 ## WHERE
-- Filtrare valori folosind WHERE
-- Returnarea datelor unde FirstName este Mihai;
select * from owners where FirstName = 'Mihai';

 ## LIKE
-- Filtrare valori folosind LIKE
-- Returnarea datelor unde PetName incepe cu litera M
select * from pets where PetName like 'M%';

-- Returnarea datelor unde PetName se termina cu litera M
select * from pets where PetName like '%A';

  ## AND si OR
-- Filtrare valori folosind AND si OR
-- Returnare datelor unde PetName incepe cu M si Species este Pisica.
select * from pets where PetName like 'M%' and Species = 'Pisica';
-- Returnare datelor unde PetName incepe cu M sau Species este Pisica.
select * from pets where PetName like 'M%' or Species = 'Pisica';

  ## ORDER BY
-- Filtrare valori folosind ORDER BY
-- Returnarea valorilo din col. PetName, Species, Breed 
-- si ordonarea lor in ordine alfabetica (asc-> de la A la Z)
select PetName , Species, Breed from pets order by PetName asc;

  ## JOIN
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


Concluzie
Acești pași explică modul de creare a unei baze de date pentru un cabinet veterinar, cum să inserați date de test și cum să interogați datele. Aceasta este o bază de date simplă care poate fi extinsă cu alte funcționalități și tabele după nevoie


