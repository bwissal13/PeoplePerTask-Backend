CREATE DATABASE peoplePerTask;
CREATE TABLE Users(
UserId int PRIMARY KEY,
UserName VARCHAR(255),
ProfilPassword VARCHAR(255), 
email VARCHAR(255),
Other VARCHAR(255)
);
CREATE TABLE categories(
    categorieId int PRIMARY KEY,
    CategorieName VARCHAR(255)
);
CREATE TABLE sousCategories(
    sousCategorieId int PRIMARY KEY,
    sousCategorieName VARCHAR(255),
    categorieId int,
    foreign key (categorieId) references categories(categorieId)
);
CREATE TABLE projets(
    ProjetId int PRIMARY KEY,
    projetTitle VARCHAR(255),
    projetDescription VARCHAR(255),
    categorieId int,
    foreign key (categorieId) references categories(categorieId),
    sousCategorieId int,
    foreign key (sousCategorieId) references sousCategories(sousCategorieId),
    UserId int,
    foreign key (UserId) references Users(UserId)
);
CREATE TABLE freelances(
 freelanceID int PRIMARY KEY,
 freelanceName VARCHAR(255),
 competences VARCHAR(255) check (competences='fr' or competences='ar' ),
 UserId int,
 foreign key (UserId) references Users(UserId)
);
CREATE TABLE offres(
    offreId int PRIMARY KEY,    
    Amount INT,
    Deadline INT  
);

CREATE TABLE Testimonials (
    Testimonial_ID INT PRIMARY KEY,
    Comment TEXT  
);