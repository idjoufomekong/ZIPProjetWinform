-- Création des types table nécessaires aux opérations sur la base de données
drop type TypeTableTache
go
create type TypeTableTache as table
(
	Id uniqueidentifier not null,
	Libelle nvarchar(40) not null,
	Annexe bit not null,
	Activite varchar(20) not null,
	Login varchar(20) not null,
	Description nvarchar(100)
	)
go

drop type TypeTableTacheprod
go	
create type TypeTableTacheprod as table
(
	Id uniqueidentifier not null,
	DureePrevue float not null,
	DureeRestante float not null,
	Module varchar(20) not null,
	LogicielModule varchar(20) not null,
	NumeroVersion float not null,
	Logicielversion varchar(20) not null
	
)
go

drop type TypeTableTravail
go
create type TypeTableTravail as table
(
	Id uniqueidentifier not null,
	DateTravail date not null,
	Heures float not null,
	TauxProductivite float not null
)
go
