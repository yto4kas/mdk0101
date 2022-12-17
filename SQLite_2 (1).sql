CREATE TABLE IF not EXISTS type(
  id INTEGER PRIMARY KEY,
  name VARCHAR (256) NOTNULL
);
  insert INTO type(id,name) values (1, "art_object"); 
  insert INTO type(id,name) values (2, "social buildings");

CREATE TABLE IF NOT EXISTS buildings(
  id INTEGER PRIMARY KEY,
  title VARCHAR (256),
  typeID INTEGER NOTNULL
  FOREIGN KEY (typeID) REFERENCES type (id) ON DELETE CASCADE
);
INSERT INTO buildings(id,typeID,title) VALUES (1,1,"футбольный мяч");
INSERT INTO buildings(id,typeID,title) VALUES (2,2,"пять десятиэтажных домов");

CREATE TABLE IF NOT EXISTS materials(
  id INTEGER PRIMARY KEY,
  title VARCHAR (256) NOTNULL,
  buildingsID INTEGER NOTNULL,
  suppliersID INTEGER NOTNULL,
  FOREIGN KEY (buildingsID) REFERENCES buildings (id) ON DELETE CASCADE,
  FOREIGN KEY (suppliersID) REFERENCES supliers (id) ON DELETE CASCADE
);
insert INTO materials (buildingsID,supliersID,title) values (1,1,"стеклопластик");
insert INTO materials (buildingsID,supliersID,title) values (2,2,"газобетон, бетон, дерево, кирпич");

CREATE TABLE IF NOT EXISTS supliers(
  id INTEGER PRIMARY KEY,
  title VARCHAR (256) NOTNULL,
  number VARCHAR (11) NOTNULL UNIQUE
);
INSERT INTO supliers (id,title,number) VALUES (1,"artplast","79235980146");
INSERT INTO supliers (id,title,number) VALUES (2,"truhome","79278465926");

CREATE TABLE IF NOT EXISTS orders(
  id INTEGER PRIMARY KEY,
  build VARCHAR (256) NOTNULL,
  material (256) NOTNULL,
  userID (11) NOTNULL,
  FOREIGN KEY (userID) REFERENCES users(id)
);
INSERT INTO orders (build,material,userID) VALUES ("двухэтажный дом","газобетон,кирпичи",2)

CREATE TABLE IF NOT EXISTS users(
  id INTEGER PRIMARY KEY,
  name VARCHAR (256) NOTNULL,
  surname VARCHAR (256) NOTNULL,
  number VARCHAR (256) NOTNULL UNIQUE
);
INSERT INTO users (name, surname, number) VALUES ("Tsunade","Hashirama","79211924749");
INSERT INTO users (name, surname, number) VALUES ("Ayato","Kirigaya","79082787341");
INSERT INTO users (name, surname, number) VALUES ("Iter","Tsepish","79102948416");