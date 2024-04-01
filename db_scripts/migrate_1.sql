DROP TABLE IF EXISTS album;
DROP TABLE IF EXISTS label;
DROP TABLE IF EXISTS musician;
DROP TABLE IF EXISTS singer;
DROP TABLE IF EXISTS band;

CREATE TABLE IF NOT EXISTS band
    (bandName VARCHAR(50),
    creation YEAR,
    genre VARCHAR(50),
    PRIMARY KEY (bandName));

CREATE TABLE IF NOT EXISTS musician (     musicianName varchar(50),
                                        firstName varchar(50),
                                        lastName varchar(50),
                                        age int,
                                        role VARCHAR(50),
                                        bandName VARCHAR(50),
                                        PRIMARY KEY(musicianName));
CREATE TABLE IF NOT EXISTS label (      labelName varchar(50),
                                        creation YEAR,
                                        genre varchar(50),
                                        PRIMARY KEY (labelName));
CREATE TABLE IF NOT EXISTS album (      albumName varchar(50),
                                        singerName varchar(50),
                                        year YEAR,
                                        labelName varchar(50),
                                        PRIMARY KEY (albumName),
                                        CONSTRAINT FK_A_singerName FOREIGN KEY (singerName) REFERENCES musician (musicianName),
                                        FOREIGN KEY (labelName) REFERENCES label (labelName));

INSERT INTO band VALUES
    ("Crazy Duo", 2015, "rock"),
    ("Luna", 2009, "classical"),
    ("Mysterio", 2019, "pop");
INSERT INTO musician VALUES ("Alina", "Darcy", "Boles", 32, "vocals", "Crazy Duo"), ("Mysterio","Jessie","Chancey",23, "guitar", "Mysterio"), ("Rainbow", "Sarah", "Derrick", 47, "percussion", "Crazy Duo"), ("Luna", "Emily", "Seibold", 31, "piano", "Luna");
INSERT INTO label VALUES ("World Music", 2002, "pop"), ("Dark Matter", 2015, "rock"), ("Four Seasons", 1999, "classical");
INSERT INTO album VALUES ("World of Mysteries", "Mysterio", 2019, "Dark Matter"), ("Second Mystery", "Mysterio", 2021, "World Music"), ("Concertos", "Luna", 2009, "Four Seasons");
