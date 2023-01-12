CREATE DATABASE SingularityU;
USE SingularityU;

DROP TABLE IF EXISTS cliente;
CREATE TABLE cliente(
    idCliente int(10) unsigned NOT NULL,
    razonSocial varchar(450) NOT NULL,
    PRIMARY KEY (idCliente));
    
INSERT INTO cliente (idCliente, razonSocial) VALUES 
(01, 'Deloitte'),
(02, 'KIO'),
(03, 'EXPANSION'),
(04, 'ARBOMEX'),
(05, 'rackspace'),
(06, 'Terra'),
(07, 'Tresalia'),
(08, 'Gobierno de Jalisco'),
(09, 'ORACLE'),
(10, 'Grupo Bursatil Mexicano'),
(11, 'Nestlé, SA de CV'),
(12, 'GNP Seguros'),
(13, 'Farmaceutica BAYER'),
(14, 'Universidad Panamericana'),
(15, 'Coursera'),
(16, 'Universidad de Guadalajara'),
(17, 'AEROMEXICO'),
(18, 'Grupo FEMSA'),
(19, 'PEPSICO'),
(20, 'Rappi'),
(21, 'Banorte'),
(22, 'Gobierno de Puerto Vallarta'),
(23, 'Grupo Cervecero Modelo'),
(24, 'Cinépolis'),
(25, 'Cámara Nacional de la Industria Tequilera'),
(26, 'Café LA FINCA'),
(27, 'MEZCAL TITLÁN'),
(28, 'Aliat Universidades'),
(29, 'Tecnológico de Monterrey'),
(30, 'Grupo URREA');

DROP TABLE IF EXISTS especialidad;
CREATE TABLE especialidad(
    idEspecialidad int(10) unsigned NOT NULL,
    especialidad varchar(45) NOT NULL,
    PRIMARY KEY (idEspecialidad));

INSERT INTO especialidad (idEspecialidad, especialidad) VALUES
(01, 'Ingeniería Artificial'),
(02, 'Astronomía'),
(03, 'Gastronomía'),
(04, 'Economía'),
(05, 'Pedagogía'),
(06, 'Filosofía'),
(07, 'Ciberseguridad'),
(08, 'Liderazgo'),
(09, 'Ingeniería genética'),
(10, 'Fluidez Digitnal'),
(11, 'Robotica'),
(12, 'Big Data'),
(13, 'Mentalidad Exponencial'),
(14, 'Potencial Humano'),
(15, 'Neurociencia'),
(16, 'Biotecnología'),
(17, 'Arquitectura'),
(18, 'Tecnología'),
(19, 'Ciencia de la felicidad'),
(20, 'Emprendimiento'),
(21, 'Futuro de la educación'),
(22, 'Exponencialidad'),
(23, 'Pensamiento exponencial'),
(24, 'Medicina'),
(25, 'Futuro del trabajo'),
(26, 'Crecimiento disruptivo'),
(27, 'Inovación'),
(28, 'Futuro del Retail'),
(29, 'Crypto'),
(30, 'Prácticas Transformativas');

    
DROP TABLE IF EXISTS gradoEstudio;
CREATE TABLE gradoEstudio(
    idGrado int(10) unsigned NOT NULL,
    nivel varchar(45) NOT NULL,
    PRIMARY KEY (idGrado)
    );
    
INSERT INTO gradoEstudio (idGrado, nivel) VALUES
(01, 'Preescolar'),
(02, 'Primaria'),
(03, 'Secundaria'),
(04, 'Preparatoria'),
(05, 'Licenciatura'),
(06, 'Maestría'),
(07, 'Doctorado');

DROP TABLE IF EXISTS universidad;
CREATE TABLE universidad(
    idUniversidad int(10) unsigned NOT NULL,
    universidad varchar(45) NOT NULL,
    PRIMARY KEY (idUniversidad)
    );
    
INSERT INTO universidad (idUniversidad, universidad) VALUES
(01, 'Tecnológico de Monterrey'),
(02, 'Houston University'),
(03, 'Columbia University'),
(04, 'Standford University'),
(05, 'Harvard University'),
(06, 'Instituto Tecnológico de Massachusetts'),
(07, 'Yale University'),
(08, 'Princeton University'),
(09, 'Chicago University'),
(10, 'Pensilvania University'),
(11, 'Johns Hopkins University'),
(12, 'Cornell'),
(13, 'University of California'),
(14, 'Duke University'),
(15, 'New York University'),
(16, 'University of Brown'),
(17, 'Dartmouth College'),
(18, 'Northwestern University'),
(19, 'Georgetown University'),
(20, 'Atlanta Intitute Technology'),
(21, 'North Carolina University'),
(22, 'Notre Dame University'),
(23, 'California Sorth University'),
(24, 'Canegie Mellon University'),
(25, 'University of Washington'),
(26, 'Rice University'),
(27, 'Michigan University'),
(28, 'Emory University'),
(29, 'Arizona State University'),
(30, 'Northeastern University');   

DROP TABLE IF EXISTS ponentes;
CREATE TABLE ponentes(
    idPonente int(10) unsigned NOT NULL,
    nombre varchar(45) NOT NULL,
    apellidoP varchar(60) NOT NULL,
    especialidad varchar(50) NOT NULL,
    telefono int(10) NOT NULL,
    gradoEstudio varchar(25) DEFAULT NULL,
    universidad int(5) DEFAULT NULL,
    PRIMARY KEY (idPonente),
    FOREIGN KEY (especialidad) REFERENCES especialidad(idEspecialidad),
    FOREIGN KEY (gradoEstudio) REFERENCES gradoEstudio(idGrado),
    FOREIGN KEY (universidad) REFERENCES universidad(idUniversidad));

INSERT INTO ponentes (idPonente, nombre, apellidoP, especialidad, telefono, gradoEstudio, universidad) VALUES
(01, 'Pascal', 'Finette', 08, 55443311, 07, 01),
(02, 'Elizabeth', 'Parrish', 09, 55667899, 06, 02),
(03, 'Mark', 'Post', 03, 55846250, 06, 03),
(04, 'Samantha', 'Radocchia', 06, 77853212, 06, 04),
(05, 'Neil', 'Harbisson', 14, 86541022, 07, 05),
(06, 'Hod', 'Lipson', 01, 86235648, 07, 06),
(07, 'Tiffany', 'Vora', 01, 18556712, 07, 07),
(08, 'Michel', 'Rojkind', 17, 55923456, 07, 08),
(09, 'Lisa Kay', 'Solomon', 30, 89423141, 07, 09),
(10, 'Daniel', 'Voguel', 29, 45723695, 07, 10),
(11, 'Ramsez', 'Naam', 18, 55347865, 07, 11),
(12, 'Shuo', 'Chen', 23, 45254875, 05, 12),
(13, 'Bismarck', 'Lepe', 18, 78564232, 06, 13),
(14, 'Ja-Naé', 'Duane', 18, 55756210, 06, 14),
(15, 'Drew', 'Dudley', 08, 56301425, 05, 15),
(16, 'Laila', 'Pawlak', 08, 48712365, 06, 16),
(17, 'MJ', 'Petroni', 14, 56259856, 07, 17),
(18, 'Pola', 'Zen', 28, 78451525, 05, 18),
(19, 'Raymond', 'McCauley', 16, 25361532, 07, 19),
(20, 'Tricia', 'Wang', 12, 96857425, 07, 20),
(21, 'Vivian', 'Lan', 22, 78643216, 06, 21),
(22, 'Kai', 'Fu Lee', 01, 45652575, 07, 22),
(23, 'Vivienne', 'Ming', 01, 55794125, 07, 23),
(24, 'Peter', 'Diamandis', 23, 55355685, 07, 24),
(25, 'Jaya', 'Baloo', 07, 56784516, 05, 25),
(26, 'Tal Ben', 'Shahar', 19, 95123874, 06, 26),
(27, 'Divya', 'Chander', 15, 55682315, 07, 27),
(28, 'Taddy', 'Blecher', 05, 55478321, 06, 28),
(29, 'Anousheh', 'Ansari', 20, 54262312, 07, 29),
(30, 'Jason', 'Silva', 13, 47895165, 07, 30);

DROP TABLE IF EXISTS autor;
CREATE TABLE autor(
    idAutor int(10) unsigned NOT NULL,
    nombre varchar(45) NOT NULL,
    apellidoP varchar(60) NOT NULL,
    universidad int(5),
    especialidad varchar(50) NOT NULL,
    PRIMARY KEY (idAutor),
    FOREIGN KEY (especialidad) REFERENCES especialidad(idEspecialidad),
    FOREIGN KEY (universidad) REFERENCES universidad(idUniversidad));

INSERT INTO autor (idAutor, nombre, apellidoP, universidad, especialidad) VALUES
(01, 'Ricardo', 'Jimenez', 05, 07),
(02, 'Johns', 'Adals',24, 12),
(03, 'Austrith', 'Danael',17, 16),
(04, 'John', 'Sorguis',06, 15),
(05, 'Marian', 'Carster',30, 18),
(06, 'Salomon', 'Dieks',12, 22),
(07, 'Yin', 'Zing',15, 12),
(08, 'Artur', 'Volvick',13, 11),
(09, 'Daniel', 'Annael',02, 10),
(10, 'Luis', 'Soto',14, 13),
(11, 'Miguel', 'Cervantes',16, 14),
(12, 'Jovanna', 'Radulovic', 30, 27),
(13, 'Ildefonso', 'Holguedo',14, 15),
(14, 'Saturnino', 'Pindereck',30, 21),
(15, 'Elvira', 'Risort', 14, 27),
(16, 'Julieta', 'Sabines',11, 23),
(17, 'Mireia', 'Rose',06, 18),
(18, 'Arsenio', 'Menendez', 13, 24),
(19, 'Olaya', 'Brekto', 19, 06),
(20, 'Hassan', 'Alince',26, 19),
(21, 'Marius', 'Dominguez',14, 22),
(22, 'Adam', 'Sectorus',02, 14),
(23, 'Joana', 'Natael', 07, 26),
(24, 'Natália', 'Rodriguez', 13, 04),
(25, 'Anton', 'Navarrete',04, 07),
(26, 'Nicolas', 'Sarns',15, 22),
(27, 'Carla', 'Barea',06, 30),
(28, 'Elvira', 'Coll',12, 21),
(29, 'Zar', 'Díaz', 21, 16),
(30, 'Romel', 'Volteck', 23, 15);

DROP TABLE IF EXISTS articulos;
CREATE TABLE articulos(
    idArticulo int(10) unsigned NOT NULL,
    titulo varchar(400) NOT NULL,
    autor int,
    fechaPublicacion date NOT NULL,
    PRIMARY KEY (idArticulo),
    FOREIGN KEY (autor) REFERENCES autor(idAutor));

INSERT INTO articulos (idArticulo, titulo, autor, fechaPublicacion) VALUES
(01, '4 tips para potenciar la colaboración humano + máquina en tu empresa', 01, '2022-03-12'),
(02, 'Computación Cuántica, la Revolución Tecnológica que cambiará el mundo', 02, '2021-10-17'),
(03, 'Automatización, la clave de una empresa productiva', 03, '2020-12-14'),
(04, '¿Es posible revertir el envejecimiento?', 04, '2020-04-23'),
(05, '3 empresas que domesticaron Big Data a la perfección', 05, '2020-05-27'),
(06, 'This Week’s Awesome Tech Stories From Around the Web (Through September 24)', 06, '2020-07-25'),
(07, 'Scientists Engineer Bacteria to Recycle Plastic Waste Into Valuable Chemicals', 07, '2021-06-18'),
(08, 'There Are Cheaper, More Sustainable Ways Than Desalination to Meet Our Water Needs', 08, '2020-12-17'),
(09, 'The Tech That Will Push VR to the Limits of the Human Eye', 09, '2020-10-30'),
(10, 'A Massive Carbon Capture Plant in Wyoming Will Pull 5 Million Tons of CO2 From the Air Each Year', 10, '2017-12-18'),
(11, 'OpenAI Says DALL-E Is Generating Over 2 Million Images a Day—and That’s Just Table Stakes', 11, '2018-12-10'),
(12, 'This Week’s Awesome Tech Stories From Around the Web (Through July 30)', 12, '2019-05-15'),
(13, 'This Exoskeleton Uses AI to Help People Walk Faster With Less Energy', 13, '2018-12-17'),
(14, '800,000 Neurons in a Dish Learned to Play Pong in Just Five Minutes', 14, '2017-03-18'),
(15, 'This Week’s Awesome Tech Stories From Around the Web (Through August 6)', 15, '2018-05-18'),
(16, 'Fintech es el futuro de la economía', 16, '2018-07-07'),
(17, 'El liderazgo después de la pandemia', 17, '2018-11-18'),
(18, 'Biofeedback y Neurofeedback, los nuevos jugadores contra el estrés', 18, '2021-04-13'),
(19, 'La inteligencia Artificial como herramienta contra el Parkinson', 19, '2018-12-11'),
(20, 'Olvidar para mejorar, así es el unlearning empresarial', 20, '2023-01-04'),
(21, '¿Cómo será el trabajo después del COVID?', 21, '2018-04-02'),
(22, '3 Empresas que han usado el Internet de las cosas a su favor. ¿Tu empresa será la cuarta?', 22, '2021-04-22'),
(23, '3 Medidas de ciberseguridad para blindar tu empresa', 23, '2014-06-19'),
(24, 'Medicina Personalizada, el arma secreta de la salud', 24, '2017-09-19'),
(25, 'Estrés Laboral en 2021', 25,'2014-08-15'),
(26, 'Un negocio con Inteligencia Artificial', 26, '2017-04-12'),
(27, 'These 2021 Biotech Breakthroughs Will Shape the Future of Health and Medicine', 27, '2019-11-13'),
(28, 'Moderna Will Develop mRNA Vaccines for 15 of the World’s Worst Diseases', 28, '2019-12-10'),
(29, 'Estonia Is a ‘Digital Republic’—What That Means and Why It May Be Everyone’s Future', 29, '2018-07-06'),
(30, 'The UK May Build a £16 Billion Solar Power Station in Space. Here’s How It Would Work', 30, '2018-04-27');

DROP TABLE IF EXISTS eventos;
CREATE TABLE eventos(
    idEvento int(10) unsigned NOT NULL,
    ponente int(10) NOT NULL,
    ponente2 int(10) NOT NULL,
    ponente3 int(19),
    lugar varchar(100) NOT NULL,
    año int(4) NOT NULL,
    fecha date NOT NULL,
    PRIMARY KEY (idEvento),
    FOREIGN KEY (ponente) REFERENCES ponentes(idPonente),
    FOREIGN KEY (ponente2) REFERENCES ponentes(idPonente),
    FOREIGN KEY (ponente3) REFERENCES ponentes(idPonente));

INSERT INTO eventos (idEvento, ponente, ponente2, ponente3, lugar, año, fecha) VALUES
(01, 05, 04, 30, 'Jalisco', 2022, '2022-07-11'),
(02, 23, 34, 24, 'Jalisco', 2021, '2021-08-14'),
(03, 21, 23, NULL, 'Jalisco', 2020, '2020-10-15'),
(04, 17, 13, 15, 'Jalisco', 2019, '2019-07-12'),
(05, 16, 21, 02, 'Jalisco', 2018, '2018-07-04'),
(06, 27, 05, 09, 'Jalisco', 2017, '2017-06-27'),
(07, 11, 29, 04, 'Jalisco', 2016, '2016-03-22'),
(08, 25, 08, 28, 'Jalisco', 2015, '2015-06-13'),
(09, 13, 06, 07, 'Jalisco', 2014, '2014-06-12'),
(10, 19, 11, 22, 'Jalisco', 2013, '2013-06-22'),
(11, 25, 23, 12, 'Jalisco', 2012, '2012-06-17'),
(12, 30, 29, 28, 'Jalisco', 2011, '2011-05-14'),
(13, 06, 24, NULL, 'Jalisco', 2010, '2010-09-18'),
(14, 05, 14, 19, 'Jalisco', 2009, '2009-07-12'),
(15, 13, 16, 19, 'Jalisco', 2008, '2008-07-21'),
(16, 08, 17, 23, 'Jalisco', 2007, '2007-10-14'),
(17, 14, 16, 22, 'Jalisco', 2006, '2006-06-12'),
(18, 15, 30, 24, 'Jalisco', 2005, '2005-06-12');
