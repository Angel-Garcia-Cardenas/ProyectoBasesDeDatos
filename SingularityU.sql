CREATE DATABASE SingularityU;
USE SingularityU;

DROP TABLE IF EXISTS cliente;
CREATE TABLE cliente(
    idCliente int(10) unsigned NOT NULL AUTO_INCREMENT,
    razonSocial varchar(450) NOT NULL,
    evento int,
    PRIMARY KEY (idCliente),
    FOREIGN KEY (evento) REFERENCES eventos(idEvento));
    
INSERT INTO cliente (razonSocial, evento) VALUES 
('Deloitte', 1),
('KIO', 2),
('EXPANSION', 3),
('ARBOMEX', 4),
('rackspace', 5),
('Terra', 6),
('Tresalia', 7),
('Gobierno de Jalisco', 8),
('ORACLE', 9),
('Grupo Bursatil Mexicano', 10),
('Nestlé, SA de CV', 11),
('GNP Seguros', 12),
('Farmaceutica BAYER', 13),
('Universidad Panamericana', 14),
('Coursera', 15),
('Universidad de Guadalajara', 16),
('AEROMEXICO', 17),
('Grupo FEMSA', 18),
('PEPSICO', 17),
('Rappi', 1),
('Banorte', 2),
('Gobierno de Puerto Vallarta', 3),
('Grupo Cervecero Modelo', 4),
('Cinépolis', 5),
('Cámara Nacional de la Industria Tequilera', 6),
('Café LA FINCA', 7),
('MEZCAL TITLÁN', 8),
('Aliat Universidades', 9),
('Tecnológico de Monterrey', 10),
('Grupo URREA', 1);

DROP TABLE IF EXISTS especialidad;
CREATE TABLE especialidad(
    idEspecialidad int(10) unsigned NOT NULL AUTO_INCREMENT,
    especialidad varchar(45) NOT NULL,
    PRIMARY KEY (idEspecialidad));

INSERT INTO especialidad (especialidad) VALUES
('Ingeniería Artificial'),
('Astronomía'),
('Gastronomía'),
('Economía'),
('Pedagogía'),
('Filosofía'),
('Ciberseguridad'),
('Liderazgo'),
('Ingeniería genética'),
('Fluidez Digitnal'),
('Robotica'),
('Big Data'),
('Mentalidad Exponencial'),
('Potencial Humano'),
('Neurociencia'),
('Biotecnología'),
('Arquitectura'),
('Tecnología'),
('Ciencia de la felicidad'),
('Emprendimiento'),
('Futuro de la educación'),
('Exponencialidad'),
('Pensamiento exponencial'),
('Medicina'),
('Futuro del trabajo'),
('Crecimiento disruptivo'),
('Inovación'),
('Futuro del Retail'),
('Crypto'),
('Prácticas Transformativas');

    
DROP TABLE IF EXISTS gradoEstudio;
CREATE TABLE gradoEstudio(
    idGrado int(10) unsigned NOT NULL AUTO_INCREMENT,
    nivel varchar(45) NOT NULL,
    PRIMARY KEY (idGrado)
    );
    
INSERT INTO gradoEstudio (nivel) VALUES
('Preescolar'),
('Primaria'),
('Secundaria'),
('Preparatoria'),
('Licenciatura'),
('Maestría'),
('Doctorado');

DROP TABLE IF EXISTS universidad;
CREATE TABLE universidad(
    idUniversidad int(10) unsigned NOT NULL AUTO_INCREMENT,
    universidad varchar(45) NOT NULL,
    PRIMARY KEY (idUniversidad)
    );
    
INSERT INTO universidad (universidad) VALUES
('Tecnológico de Monterrey'),
('Houston University'),
('Columbia University'),
('Standford University'),
('Harvard University'),
('Instituto Tecnológico de Massachusetts'),
('Yale University'),
('Princeton University'),
('Chicago University'),
('Pensilvania University'),
('Johns Hopkins University'),
('Cornell'),
('University of California'),
('Duke University'),
('New York University'),
('University of Brown'),
('Dartmouth College'),
('Northwestern University'),
('Georgetown University'),
('Atlanta Intitute Technology'),
('North Carolina University'),
('Notre Dame University'),
('California Sorth University'),
('Canegie Mellon University'),
('University of Washington'),
('Rice University'),
('Michigan University'),
('Emory University'),
('Arizona State University'),
('Northeastern University');   

DROP TABLE IF EXISTS ponentes;
CREATE TABLE ponentes(
    idPonente int(10) unsigned NOT NULL AUTO_INCREMENT,
    nombre varchar(45) NOT NULL,
    apellidoP varchar(60) NOT NULL,
    especialidad varchar(50) NOT NULL,
    telefono int(10) NOT NULL,
    gradoEstudio varchar(25) DEFAULT NULL,
    universidad int(5) DEFAULT NULL,
    evento int(10) DEFAULT NULL,
    PRIMARY KEY (idPonente),
    FOREIGN KEY (especialidad) REFERENCES especialidad(idEspecialidad),
    FOREIGN KEY (gradoEstudio) REFERENCES gradoEstudio(idGrado),
    FOREIGN KEY (universidad) REFERENCES universidad(idUniversidad),
    FOREIGN KEY (evento) REFERENCES eventos(idEvento));

INSERT INTO ponentes (nombre, apellidoP, especialidad, telefono, gradoEstudio, universidad, evento) VALUES
('Pascal', 'Finette', 08, 55443311, 07, 01, 01),
('Elizabeth', 'Parrish', 09, 55667899, 06, 02, 02),
('Mark', 'Post', 03, 55846250, 06, 03, 03),
('Samantha', 'Radocchia', 06, 77853212, 06, 04, 04),
('Neil', 'Harbisson', 14, 86541022, 07, 05, 05),
('Hod', 'Lipson', 01, 86235648, 07, 06, 06),
('Tiffany', 'Vora', 01, 18556712, 07, 07, 07),
('Michel', 'Rojkind', 17, 55923456, 07, 08, 08),
('Lisa Kay', 'Solomon', 30, 89423141, 07, 09, 09),
('Daniel', 'Voguel', 29, 45723695, 07, 10, 10),
('Ramsez', 'Naam', 18, 55347865, 07, 11, 11),
('Shuo', 'Chen', 23, 45254875, 05, 12, 12),
('Bismarck', 'Lepe', 18, 78564232, 06, 13, 13),
('Ja-Naé', 'Duane', 18, 55756210, 06, 14, 14),
('Drew', 'Dudley', 08, 56301425, 05, 15, 15),
('Laila', 'Pawlak', 08, 48712365, 06, 16, 16),
('MJ', 'Petroni', 14, 56259856, 07, 17, 17),
('Pola', 'Zen', 28, 78451525, 05, 18, 18),
('Raymond', 'McCauley', 16, 25361532, 07, 19, 19),
('Tricia', 'Wang', 12, 96857425, 07, 20, 20),
('Vivian', 'Lan', 22, 78643216, 06, 21, 21),
('Kai', 'Fu Lee', 01, 45652575, 07, 22, 22),
('Vivienne', 'Ming', 01, 55794125, 07, 23, 23),
('Peter', 'Diamandis', 23, 55355685, 07, 24, 24),
('Jaya', 'Baloo', 07, 56784516, 05, 25, 25),
('Tal Ben', 'Shahar', 19, 95123874, 06, 26, 26),
('Divya', 'Chander', 15, 55682315, 07, 27, 27),
('Taddy', 'Blecher', 05, 55478321, 06, 28, 28),
('Anousheh', 'Ansari', 20, 54262312, 07, 29, 29),
('Jason', 'Silva', 13, 47895165, 07, 30, 30);

DROP TABLE IF EXISTS autor;
CREATE TABLE autor(
    idAutor int(10) unsigned NOT NULL AUTO_INCREMENT,
    nombre varchar(45) NOT NULL,
    apellidoP varchar(60) NOT NULL,
    universidad int(5),
    especialidad varchar(50) NOT NULL,
    PRIMARY KEY (idAutor),
    FOREIGN KEY (especialidad) REFERENCES especialidad(idEspecialidad),
    FOREIGN KEY (universidad) REFERENCES universidad(idUniversidad));

INSERT INTO autor (nombre, apellidoP, universidad, especialidad) VALUES
('Ricardo', 'Jimenez', 05, 07),
('Johns', 'Adals',24, 12),
('Austrith', 'Danael',17, 16),
('John', 'Sorguis',06, 15),
('Marian', 'Carster',30, 18),
('Salomon', 'Dieks',12, 22),
('Yin', 'Zing',15, 12),
('Artur', 'Volvick',13, 11),
('Daniel', 'Annael',02, 10),
('Luis', 'Soto',14, 13),
('Miguel', 'Cervantes',16, 14),
('Jovanna', 'Radulovic', 30, 27),
('Ildefonso', 'Holguedo',14, 15),
('Saturnino', 'Pindereck',30, 21),
('Elvira', 'Risort', 14, 27),
('Julieta', 'Sabines',11, 23),
('Mireia', 'Rose',06, 18),
('Arsenio', 'Menendez', 13, 24),
('Olaya', 'Brekto', 19, 06),
('Hassan', 'Alince',26, 19),
('Marius', 'Dominguez',14, 22),
('Adam', 'Sectorus',02, 14),
('Joana', 'Natael', 07, 26),
('Natália', 'Rodriguez', 13, 04),
('Anton', 'Navarrete',04, 07),
('Nicolas', 'Sarns',15, 22),
('Carla', 'Barea',06, 30),
('Elvira', 'Coll',12, 21),
('Zar', 'Díaz', 21, 16),
('Romel', 'Volteck', 23, 15);

DROP TABLE IF EXISTS idioma;
CREATE TABLE idioma(
    idIdioma int(10) unsigned NOT NULL AUTO_INCREMENT,
    idioma varchar(45) NOT NULL,
    PRIMARY KEY (idIdioma)
    );
    
INSERT INTO idioma (idioma) VALUES
('Español'),
('Inglés');

DROP TABLE IF EXISTS articulos;
CREATE TABLE articulos(
    idArticulo int(10) unsigned NOT NULL AUTO_INCREMENT,
    titulo varchar(400) NOT NULL,
    autor int(5) NOT NULL,
    fechaPublicacion date NOT NULL,
    volumen int NOT NULL,
    abstract varchar(400) NOT NULL,
    idioma int(5) NOT NULL,
    PRIMARY KEY (idArticulo),
    FOREIGN KEY (autor) REFERENCES autor(idAutor),
    FOREIGN KEY (idioma) REFERENCES idioma(idIdioma));

INSERT INTO articulos (titulo, autor, fechaPublicacion, idioma, volumen, abstract) VALUES
('4 tips para potenciar la colaboración humano + máquina en tu empresa', 01, '2022-03-12', 01, 1536, 'El trabajo en equipo se da cuando un grupo de personas trabaja en conjunto hacia un objetivo colectivo de manera eficiente. Sigue leyendo y descubre los 11 beneficios principales del trabajo en equipo en una empresa y los ejemplos de cada uno. '),
('Computación Cuántica, la Revolución Tecnológica que cambiará el mundo', 02, '2021-10-17', 01, 1422, 'El mundo de la informática se prepara para una profunda revolución con la llegada de la computación cuántica, una computadora capaz de resolver en segundos un problema matemático que a un ordenador clásico le llevaría 10.000 años.'),
('Automatización, la clave de una empresa productiva', 03, '2020-12-14', 01, 1332, 'Automatizar es integrar la tecnología de softwares o maquinaria para hacer actividades más rápidas, a un menor costo, aumentando la productividad y con la menor intervención humana.Si estás pensando cómo sacarle el mayor beneficio a la automatización, aquí te decimos los puntos que deberías considerar.'),
('¿Es posible revertir el envejecimiento?', 04, '2020-04-23', 01, 5455, 'Los resultados de este estudio, publicado en la revista científica Cell, ponen de manifiesto que la expresión de determinados genes asociados con un estado embrionario puede revertir el envejecimiento.'),
('3 empresas que domesticaron Big Data a la perfección', 05, '2020-05-27', 01, 1234, 'Series al gusto de usuarios, prendas adaptadas a las distintas tipologías de deportistas, fondos de armario que se gestionan solos a partir de tus parámetros de estilo… Analizamos cinco estrategias de big data.'),
('This Week’s Awesome Tech Stories From Around the Web (Through September 24)', 06, '2020-07-25', 02, 4517, 'The competition to create ever smaller, ever better robots is a fierce one, and Cornell University is out front now with a set of bots small enough to sit on a human hair but that can move on their own using nothing but light as a power source.'),
('Scientists Engineer Bacteria to Recycle Plastic Waste Into Valuable Chemicals', 07, '2021-06-18', 02, 7524, 'A combination of chemical catalysts and engineered bacteria has been used to convert a mix of common plastic rubbish into a useful product. The technique could be adapted for other plastics or to make different materials.'),
('There Are Cheaper, More Sustainable Ways Than Desalination to Meet Our Water Needs', 08, '2020-12-17', 02,1286, 'Finding ways to get people to use less water could reduce existing demand by 30-50 percent in many urban areas that have already begun conservation efforts. Second, recycling or reusing treated wastewater is often less expensive than desalination.'),
('The Tech That Will Push VR to the Limits of the Human Eye', 09, '2020-10-30', 02, 7245, 'Big tech is eager to get us excited about the coming of the metaverse, but today’s virtual reality hardware is a long way from meeting their ambitious goals. One of the biggest challenges is building better displays with far more pixels per inch, but experts say new materials and designs are on the way.'),
('A Massive Carbon Capture Plant in Wyoming Will Pull 5 Million Tons of CO2 From the Air Each Year', 10, '2017-12-18', 02, 5774, 'A couple of climate tech startups plan to suck a hell of a lot of carbon dioxide out of the air and trap it underground in Wyoming. The goal of the new endeavor, called Project Bison, is to build a new facility capable of drawing down 5 million metric tons of carbon dioxide annually by 2030.'),
('OpenAI Says DALL-E Is Generating Over 2 Million Images a Day—and That’s Just Table Stakes', 11, '2018-12-10', 02, 4875, 'The venerable stock image site, Getty, boasts a catalog of 80 million images. Shutterstock, a rival of Getty, offers 415 million images. It took a few decades to build up these prodigious libraries.'),
('This Week’s Awesome Tech Stories From Around the Web (Through July 30)', 12, '2019-05-15', 02, 4685, 'From today, the Alphabet-owned AI lab is offering its database of over 200 million proteins to anyone for free. …The update includes structures for ‘plants, bacteria, animals, and many, many other organisms, opening up huge opportunities for AlphaFold to have impact on important issues such as sustainability, fuel, food insecurity, and neglected diseases,’ Demis Hassabis, DeepMind’s founder and CEO, told reporters on a call this week.'),
('This Exoskeleton Uses AI to Help People Walk Faster With Less Energy', 13, '2018-12-17', 02, 2575, 'El crédito al sector privado en México actualmente se encuentra en niveles bajos comparados con sus pares latinoamericanos. En México, el crédito al sector privado entre el PIB se ubica en 36 por ciento, comparado con 60 por ciento en Brasil, 113 por ciento en Chile y 48 por ciento en Colombia (datos del FMI para 2017).'),
('800,000 Neurons in a Dish Learned to Play Pong in Just Five Minutes', 14, '2017-03-18', 02, 2765, 'A dish of living brain cells has learned to play the 1970s arcade game Pong. About 800,000 cells linked to a computer gradually learned to sense the position of the games electronic ball and control a virtual paddle, a team reports in the journal Neuron.'),
('This Week’s Awesome Tech Stories From Around the Web (Through August 6)', 15, '2018-05-18', 02, 7681, '‘I think there’s no doubt that 90% of what the brain does is self-supervised learning,’ said [the Quebec Artificial Intelligence Institute’s] Blake Richards. Biological brains are thought to be continually predicting, say, an object’s future location as it moves, or the next word in a sentence, just as a self-supervised learning algorithm attempts to predict the gap in an image or a segment of text. And brains learn from their mistakes on their own, too—only a small part of our brain’s feedback comes from an external source saying, essentially, ‘wrong answer’'),
('Fintech es el futuro de la economía', 16, '2018-07-07', 01, 4825, 'Todos somos muy conscientes de que las computadoras son ahora una parte integral de nuestras vidas. Hoy en día, la tecnología ha avanzado tanto que un software puede realizar tareas como los humanos e incluso tener una alta tasa de éxito al hacerlo.'),
('El liderazgo después de la pandemia', 17, '2018-11-18', 01, 7624, 'Todos somos muy conscientes de que las computadoras son ahora una parte integral de nuestras vidas. Hoy en día, la tecnología ha avanzado tanto que un software puede realizar tareas como los humanos e incluso tener una alta tasa de éxito al hacerlo.'),
('Biofeedback y Neurofeedback, los nuevos jugadores contra el estrés', 18, '2021-04-13', 01, 78955, 'Todos somos muy conscientes de que las computadoras son ahora una parte integral de nuestras vidas. Hoy en día, la tecnología ha avanzado tanto que un software puede realizar tareas como los humanos e incluso tener una alta tasa de éxito al hacerlo.'),
('La inteligencia Artificial como herramienta contra el Parkinson', 19, '2018-12-11', 01, 4187, 'Todos somos muy conscientes de que las computadoras son ahora una parte integral de nuestras vidas. Hoy en día, la tecnología ha avanzado tanto que un software puede realizar tareas como los humanos e incluso tener una alta tasa de éxito al hacerlo.'),
('Olvidar para mejorar, así es el unlearning empresarial', 20, '2023-01-04', 01, 4377, 'Fintech es el futuro de la economía'),
('¿Cómo será el trabajo después del COVID?', 21, '2018-04-02', 01, 4485, 'El Internet de las cosas es un tema que poco a poco ha cobrado mayor relevancia técnica, social y económica. Actualmente es posible combinar productos de consumo, bienes duraderos, automóviles, camiones, componentes industriales, sensores y otros objetos de uso cotidiano con conectividad a Internet y potentes capacidades de análisis de datos que prometen transformar el modo en que trabajamos, vivimos y avanzamos.'),
('3 Empresas que han usado el Internet de las cosas a su favor. ¿Tu empresa será la cuarta?', 22, '2021-04-22', 01, 4785, 'El Internet de las cosas es un tema que poco a poco ha cobrado mayor relevancia técnica, social y económica. Actualmente es posible combinar productos de consumo, bienes duraderos, automóviles, camiones, componentes industriales, sensores y otros objetos de uso cotidiano con conectividad a Internet y potentes capacidades de análisis de datos que prometen transformar el modo en que trabajamos, vivimos y avanzamos.'),
('3 Medidas de ciberseguridad para blindar tu empresa', 23, '2014-06-19', 01, 4782, 'El crédito al sector privado en México actualmente se encuentra en niveles bajos comparados con sus pares latinoamericanos. En México, el crédito al sector privado entre el PIB se ubica en 36 por ciento, comparado con 60 por ciento en Brasil, 113 por ciento en Chile y 48 por ciento en Colombia'),
('Medicina Personalizada, el arma secreta de la salud', 24, '2017-09-19', 01, 1752, 'Desde su surgimiento, la biotecnología ha tenido como propósito resolver una gran variedad de problemáticas del hombre que antes parecían impensables, año con año, esta rama interdisciplinaria se llena de nuevos descubrimientos que nos han dejado ver avances científicos que para muchos podrían parecer producto de la ciencia ficción y que nos maravillan por la increíble gama de posibilidades que le abren al desarrollo humano. Mucho de ese progreso se puede notar en avances en la medicina personalizada, un nuevo concepto de tratamiento que tiene la finalidad de asegurar que los pacientes reciban las atenciones más adecuadas para afecciones específicas, de acuerdo a su composición genética y otras características médicas.'),
('Estrés Laboral en 2021', 25,'2014-08-15', 01, 0568, 'De acuerdo con un estudio de la Organización Internacional del Trabajo del 2021, reveló que México es uno de los países con mayor estrés laboral junto a Estados Unidos y China. Por su lado, la Organización Mundial de la Salud (OMS) propuso el estrés como una de las enfermedades del siglo XXI.'),
('Un negocio con Inteligencia Artificial', 26, '2017-04-12', 01, 1245, 'Todos somos muy conscientes de que las computadoras son ahora una parte integral de nuestras vidas. Hoy en día, la tecnología ha avanzado tanto que un software puede realizar tareas como los humanos e incluso tener una alta tasa de éxito al hacerlo.'),
('These 2021 Biotech Breakthroughs Will Shape the Future of Health and Medicine', 27, '2019-11-13', 02, 2578, 'It’s that time of year again! With 2021 behind us, we’re going down memory lane to highlight biotech innovations that shaped the year—with impact that will likely reverberate for many years to come. Covid-19 dominated the news, but science didn’t stand still.'),
('Moderna Will Develop mRNA Vaccines for 15 of the World’s Worst Diseases', 28, '2019-12-10', 02, 4752, 'Moderna Inc (MRNA.O) said on Monday it plans to develop and begin testing vaccines targeting 15 of the worlds most worrisome pathogens by 2025 and will permanently wave its COVID-19 vaccine patents for shots intended for certain low- and middle-income countries.'),
('Estonia Is a ‘Digital Republic’—What That Means and Why It May Be Everyone’s Future', 29, '2018-07-06', 02, 5785, 'People around the globe have been watching the build up to the US election with disbelief. Particularly confusing to many is the furore over postal ballots, which the US president, Donald Trump is insisting will lead to large-scale voter fraud – despite a complete lack of evidence to back this. And yet this issue has become a central feature of the debate.'),
('The UK May Build a £16 Billion Solar Power Station in Space. Here’s How It Would Work', 30, '2018-04-27', 02, 4785, 'Space-based solar power involves collecting solar energy in space and transferring it to Earth. While the idea itself is not new, recent technological advances have made this prospect more achievable.');

DROP TABLE IF EXISTS eventos;
CREATE TABLE eventos(
    idEvento int(10) unsigned NOT NULL AUTO_INCREMENT,
    lugar varchar(100) NOT NULL,
    año int(4) NOT NULL,
    fecha date NOT NULL,
    PRIMARY KEY (idEvento));

INSERT INTO eventos (lugar, año, fecha) VALUES
('Jalisco', 2022, '2022-07-11'),
('Jalisco', 2021, '2021-08-14'),
('Jalisco', 2020, '2020-10-15'),
('Jalisco', 2019, '2019-07-12'),
('Jalisco', 2018, '2018-07-04'),
('Jalisco', 2017, '2017-06-27'),
('Jalisco', 2016, '2016-03-22'),
('Jalisco', 2015, '2015-06-13'),
('Jalisco', 2014, '2014-06-12'),
('Jalisco', 2013, '2013-06-22'),
('Jalisco', 2012, '2012-06-17'),
('Jalisco', 2011, '2011-05-14'),
('Jalisco', 2010, '2010-09-18'),
('Jalisco', 2009, '2009-07-12'),
('Jalisco', 2008, '2008-07-21'),
('Jalisco', 2007, '2007-10-14'),
('Jalisco', 2006, '2006-06-12'),
('Jalisco', 2005, '2005-06-12');

-- AUTOMATIZACIONES

-- Stored Procedures
-- 1
	-- Encuentra los eventos dada una especialidad
DELIMITER #
CREATE PROCEDURE eventoPorEspecialidad(param VARCHAR(45))
    BEGIN
        SELECT p.evento as "Eventos" FROM ponentes p INNER JOIN especialidad e ON p.especialidad = e.idEspecialidad WHERE e.especialidad = param;
    END; #
DELIMITER ;

-- 2
    -- Encontrar ponentes y autores de una universidad
DELIMITER //
CREATE PROCEDURE creadoresPorUniversidad(param VARCHAR(45))
    BEGIN
        SELECT p.idPonente as "ID Ponente" FROM ponentes p INNER JOIN universidad u ON u.idUniversidad = p.universidad WHERE u.universidad = param;
        SELECT a.idAutor as "ID Autor" FROM autor a INNER JOIN universidad u ON u.idUniversidad = a.universidad WHERE u.universidad = param;
    END; //
DELIMITER ;

-- 3
    -- Encontrar cuantos articulos por idioma de una especialidad dada
DELIMITER |
CREATE PROCEDURE escolaridadArticulo(param VARCHAR(400))
    BEGIN
        SELECT  (SELECT COUNT(ar.idArticulo) FROM articulos ar INNER JOIN especialidad e ON e.idEspecialidad = (SELECT au.especialidad FROM autor au WHERE au.idAutor = ar.autor) WHERE ar.idioma = (SELECT idIdioma FROM idioma WHERE idioma.idioma = "Español") AND e.especialidad = param) as "Español",
                (SELECT COUNT(ar.idArticulo) FROM articulos ar INNER JOIN especialidad e ON e.idEspecialidad = (SELECT au.especialidad FROM autor au WHERE au.idAutor = ar.autor) WHERE ar.idioma = (SELECT idIdioma FROM idioma WHERE idioma.idioma = "Inglés") AND e.especialidad = param) as "Inglés";
    END; |
DELIMITER ;

-- Vistas
-- 1
-- 2
-- 3

-- Consulta
-- 1
-- 2
-- 3
-- 4
-- 5

-- Disparadores
-- 1: AFTER
-- 2: BEFORE
