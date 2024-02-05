CREATE DATABASE IF NOT EXISTS petclinic;

ALTER DATABASE petclinic
  DEFAULT CHARACTER SET utf8
  DEFAULT COLLATE utf8_general_ci;

CREATE TABLE IF NOT EXISTS vets (
  id INT(4) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(30),
  last_name VARCHAR(30),
  INDEX(last_name)
) engine=InnoDB;

CREATE TABLE IF NOT EXISTS specialties (
  id INT(4) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(80),
  INDEX(name)
) engine=InnoDB;

CREATE TABLE IF NOT EXISTS vet_specialties (
  vet_id INT(4) UNSIGNED NOT NULL,
  specialty_id INT(4) UNSIGNED NOT NULL,
  FOREIGN KEY (vet_id) REFERENCES vets(id),
  FOREIGN KEY (specialty_id) REFERENCES specialties(id),
  UNIQUE (vet_id,specialty_id)
) engine=InnoDB;

CREATE TABLE IF NOT EXISTS types (
  id INT(4) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(80),
  INDEX(name)
) engine=InnoDB;

CREATE TABLE IF NOT EXISTS owners (
  id INT(4) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(30),
  last_name VARCHAR(30),
  address VARCHAR(255),
  city VARCHAR(80),
  telephone VARCHAR(20),
  INDEX(last_name)
) engine=InnoDB;

CREATE TABLE IF NOT EXISTS pets (
  id INT(4) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(30),
  birth_date DATE,
  type_id INT(4) UNSIGNED NOT NULL,
  owner_id INT(4) UNSIGNED NOT NULL,
  INDEX(name),
  FOREIGN KEY (owner_id) REFERENCES owners(id),
  FOREIGN KEY (type_id) REFERENCES types(id)
) engine=InnoDB;

CREATE TABLE IF NOT EXISTS visits (
  id INT(4) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  pet_id INT(4) UNSIGNED NOT NULL,
  visit_date DATE,
  description VARCHAR(255),
  FOREIGN KEY (pet_id) REFERENCES pets(id)
) engine=InnoDB;

INSERT IGNORE INTO vets VALUES (1, 'SooEon', 'Lee');
INSERT IGNORE INTO vets VALUES (2, 'JungYeon', 'Shin');
INSERT IGNORE INTO vets VALUES (3, 'SoYeon', 'Park');
INSERT IGNORE INTO vets VALUES (4, 'JiWoo', 'Jeon');

INSERT IGNORE INTO specialties VALUES (1, 'Technical Support Center Manager');
INSERT IGNORE INTO specialties VALUES (2, 'Customer Management Center Manager');
INSERT IGNORE INTO specialties VALUES (3, 'Support Management Office Manager');
INSERT IGNORE INTO specialties VALUES (4, 'CEO');
INSERT IGNORE INTO specialties VALUES (5, 'Marketing Department Manager');

INSERT IGNORE INTO vet_specialties VALUES (1, 1);
INSERT IGNORE INTO vet_specialties VALUES (2, 2);
INSERT IGNORE INTO vet_specialties VALUES (3, 3);
INSERT IGNORE INTO vet_specialties VALUES (4, 4);
INSERT IGNORE INTO vet_specialties VALUES (4, 5);

INSERT IGNORE INTO types VALUES (1, 'Fantasy');
INSERT IGNORE INTO types VALUES (2, 'Romance');
INSERT IGNORE INTO types VALUES (3, 'Literary');
INSERT IGNORE INTO types VALUES (4, 'Thriller');
INSERT IGNORE INTO types VALUES (5, 'Network');

INSERT IGNORE INTO owners VALUES (1, 'Kim Geun Woo', 'Mage of the Wind', 'princess', '7,200 won', '1021345612');
INSERT IGNORE INTO owners VALUES (2, 'Kim Jung Ryul', 'Dark Mage', 'prince', '12,150 won', '1043567315');
INSERT IGNORE INTO owners VALUES (3, 'Jane Austen', 'Pride and Prejudice', 'teacher', '11,700 won', '1045156798');
INSERT IGNORE INTO owners VALUES (4, 'Kim Hyun Woo', 'The Red Destiny', 'kubernetes', '12,150 won', '1098945565');
INSERT IGNORE INTO owners VALUES (5, 'Higashino Keigo', 'Miracles of the Namiya General Store', 'docker', '13,050 won', '1034365698');
INSERT IGNORE INTO owners VALUES (6, 'Daniel Cole', 'Ragdoll Murder', 'ubuntu', '13,500 won', '1012114211');
INSERT IGNORE INTO owners VALUES (7, 'Bernard Werber', 'Lultime Secret', 'window', '13,320 won', '1035436686');
INSERT IGNORE INTO owners VALUES (8, 'Harper Lee', 'To Kill a Mockingbird', 'superman', '14,220 won', '1034567745');
INSERT IGNORE INTO owners VALUES (9, 'J.K.Rowling', 'Harry Potter and the Magic Stone', 'psy', '8,100 won', '1051236645');
INSERT IGNORE INTO owners VALUES (10, 'Jin Kang Hoon', 'CISCO networking', 'ceo', '38,000 won', '1021244457');

INSERT IGNORE INTO pets VALUES (1, 'Random House', '2006-06-22', 1, 1);
INSERT IGNORE INTO pets VALUES (2, 'Random House', '2010-10-29', 1, 2);
INSERT IGNORE INTO pets VALUES (3, 'Minumsa', '2003-09-20', 2, 3);
INSERT IGNORE INTO pets VALUES (4, 'D&C MEDIA', '2010-05-06', 1, 4);
INSERT IGNORE INTO pets VALUES (5, 'HYUNDAE MUNHAK', '2022-12-19', 3, 5);
INSERT IGNORE INTO pets VALUES (6, 'Book Plaza', '2017-10-20', 4, 6);
INSERT IGNORE INTO pets VALUES (7, 'The Open Books', '2023-10-20', 3, 7);
INSERT IGNORE INTO pets VALUES (8, 'The Open Books', '2015-06-30', 3, 8);
INSERT IGNORE INTO pets VALUES (9, 'Moonhak Soochup', '2019-11-19', 1, 9);
INSERT IGNORE INTO pets VALUES (10, 'Sungandang', '2022-09-15', 5, 10);


INSERT IGNORE INTO visits VALUES (1, 1, '2023-01-04', '3');
INSERT IGNORE INTO visits VALUES (2, 1, '2023-02-11', '2');
INSERT IGNORE INTO visits VALUES (3, 2, '2023-01-19', '1');
INSERT IGNORE INTO visits VALUES (4, 3, '2023-03-12', '17');
INSERT IGNORE INTO visits VALUES (5, 3, '2023-06-04', '16');
INSERT IGNORE INTO visits VALUES (6, 4, '2023-03-04', '5');
INSERT IGNORE INTO visits VALUES (7, 5, '2023-05-10', '4');
INSERT IGNORE INTO visits VALUES (8, 6, '2023-02-04', '3');
INSERT IGNORE INTO visits VALUES (9, 7, '2023-07-04', '11');
INSERT IGNORE INTO visits VALUES (10, 8, '2023-03-16', '8');
INSERT IGNORE INTO visits VALUES (11, 8, '2023-09-04', '7');
INSERT IGNORE INTO visits VALUES (12, 9, '2023-07-04', '5');
INSERT IGNORE INTO visits VALUES (13, 9, '2023-08-23', '4');
INSERT IGNORE INTO visits VALUES (14, 10, '2023-06-11', '13');
INSERT IGNORE INTO visits VALUES (15, 10, '2023-08-24', '12');
INSERT IGNORE INTO visits VALUES (16, 10, '2023-09-21', '11');

