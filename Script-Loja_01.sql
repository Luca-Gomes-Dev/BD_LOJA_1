create database Loja;
CREATE TABLE IF NOT EXISTS `Pessoa` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Nome` varchar(120) NOT NULL,
  `Data_Nascimento` date NOT NULL,
  `Salario` float(20) NOT null,
  PRIMARY KEY (`ID`),
  FOREIGN KEY (`ID`) REFERENCES `Departamento`(`ID`)
);

CREATE TABLE IF NOT EXISTS `Departamento` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Nome` varchar(120) NOT NULL,
  `Descrição` varchar(80) NOT NULL,
  PRIMARY KEY (`ID`)
);

CREATE TABLE IF NOT EXISTS `Formacao` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Grau` varchar(60) NOT NULL,
  `Curso` varchar(40) NOT NULL,
  `Instituicao` varchar(40) NOT NULL,
  PRIMARY KEY (`ID`),
  FOREIGN KEY (`ID`) REFERENCES `Pessoa`(`ID`)
 );

CREATE TABLE IF NOT EXISTS `Funcao` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Nome` varchar(120) NOT NULL,
  `Descrição` varchar(80) NOT NULL,
  PRIMARY KEY (`ID`)
);

CREATE TABLE IF NOT EXISTS `Loja` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Nome` varchar(120) NOT null,
  `Numero` int NOT null,
  `Rua` varchar (150) NOT null,
  `Bairro` varchar (40) NOT null,
  `Cidade` varchar (40) NOT null,
  `CEP` varchar (15) NOT null,
  `Complemento` varchar (200) NOT null,
   PRIMARY KEY (`ID`)
);

CREATE TABLE IF NOT EXISTS `Produto` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Nome` varchar(120) NOT NULL,
  `Valor` float(20) NOT NULL,
  PRIMARY KEY (`ID`),
  FOREIGN KEY (`CategoriaID`) REFERENCES `Categoria_Produto`(`ID`)
);

CREATE TABLE IF NOT EXISTS `Categoria_Produto` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Nome` varchar(120) NOT NULL,
   PRIMARY KEY (`ID`)
);