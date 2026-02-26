CREATE TABLE ToysGruop.Categoria(
CategoriaID INT auto_increment Primary Key,
Nomecategoria Varchar(50));

CREATE TABLE ToysGruop.Regione(
RegioneID INT auto_increment Primary Key,
Nomeregione varchar (50));

CREATE TABLE ToysGruop.Stati(
StatiID INT auto_increment Primary Key,
NomeStati Varchar(50),
RegioneID INT,
foreign key(RegioneID) references ToysGruop.Regione(RegioneID));

CREATE TABLE ToysGruop.Prodotti(
ProdottiID INT auto_increment Primary Key,
Nomeprodotto Varchar(50),
Prezzo decimal(10,2),
CategoriaID INT,
foreign key(CategoriaID) references ToysGruop.Categoria(CategoriaID));

CREATE TABLE ToysGruop.Vendita(
VenditaID INT auto_increment Primary key,
Codicevendita Varchar(50),
Datavendita Date,
Prezzo DECIMAL(10,2),
Quantita INT,
ProdottiID INT,
StatiID INT,
foreign key(ProdottiID) references ToysGruop.Prodotti(ProdottiID),
foreign key(StatiID) references ToysGruop.Stati(StatiID));





