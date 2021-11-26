drop database f1;
create database f1;
\c f1

create table users(
  username varchar(50) unique not null PRIMARY KEY,
  email varchar(50) unique not null,
  password varchar(50) not null Constraint password check (char_length(password) >=8)
);

CREATE TABLE Manufactur
(
  Engineer CHAR(32) NOT NULL,
  m_name CHAR(32) NOT NULL,
  location CHAR(32) NOT NULL,
  PRIMARY KEY (m_name)
);

CREATE TABLE Parts
(
  part_id INT NOT NULL,
  m_name CHAR(32) NOT NULL,
  PRIMARY KEY (part_id, m_name),
  FOREIGN KEY (m_name) REFERENCES Manufactur(m_name)
);

CREATE TABLE Race_Control
(
  Race_Director CHAR(32) NOT NULL,
  Stewards CHAR(32) NOT NULL,
  Safety_Car CHAR(32) NOT NULL,
  Medical_Car CHAR(32) NOT NULL,
  Marshall CHAR(32) NOT NULL,
  PRIMARY KEY (Race_Director),
  UNIQUE (Stewards),
  UNIQUE (Safety_Car),
  UNIQUE (Medical_Car)
);

CREATE TABLE Supplies
(
  part_id INT NOT NULL,
  m_name CHAR(32) NOT NULL,
  PRIMARY KEY (part_id, m_name),
  FOREIGN KEY (m_name) REFERENCES Manufactur(m_name)
);

CREATE TABLE Drivers
(
  d_name CHAR(32) NOT NULL,
  podiums INT NOT NULL,
  age INT NOT NULL,
  nationality CHAR(32) NOT NULL,
  PRIMARY KEY (d_name)
);

CREATE TABLE Circuit
(
  c_name CHAR(32) NOT NULL,
  lap_time NUMERIC(6,3) NOT NULL,
  turns INT NOT NULL,
  length Numeric(6,3) NOT NULL,
  drs_zone INT NOT NULL,
  location CHAR(32) NOT NULL,
  Race_Director CHAR(32) NOT NULL,
  PRIMARY KEY (c_name),
  FOREIGN KEY (Race_Director) REFERENCES Race_Control(Race_Director),
  UNIQUE (location)
);

CREATE TABLE Driver_Table
(
  points INT NOT NULL,
  fastest_lap INT NOT NULL,
  d_name CHAR(32) NOT NULL,
  PRIMARY KEY (d_name),
  FOREIGN KEY (d_name) REFERENCES Drivers(d_name)
);

CREATE TABLE competes
(
  points INT NOT NULL,
  c_name CHAR(32) NOT NULL,
  d_name CHAR(32) NOT NULL,
  PRIMARY KEY (points, c_name, d_name),
  FOREIGN KEY (c_name) REFERENCES Circuit(c_name),
  FOREIGN KEY (d_name) REFERENCES Driver_Table(d_name)
);

CREATE TABLE Sponsor
(
  s_name CHAR(32) NOT NULL,
  product CHAR(32) NOT NULL,
  PRIMARY KEY (s_name)
);

CREATE TABLE regional_sponsor
(
  s_name CHAR(32) NOT NULL,
  c_name CHAR(32) NOT NULL,
  PRIMARY KEY (s_name, c_name),
  FOREIGN KEY (s_name) REFERENCES Sponsor(s_name),
  FOREIGN KEY (c_name) REFERENCES Circuit(c_name)
);

CREATE TABLE Tyre
(
  p_name CHAR(32) NOT NULL,
  PRIMARY KEY (p_name)
);

CREATE TABLE compounds
(
  compound_name CHAR(32) NOT NULL,
  p_name CHAR(32) NOT NULL,
  PRIMARY KEY (compound_name, p_name),
  FOREIGN KEY (p_name) REFERENCES Tyre(p_name)
);

CREATE TABLE Teams
(
  t_name CHAR(32) NOT NULL,
  principle CHAR(32) NOT NULL,
  headquaters CHAR(32) NOT NULL,
  Car VARCHAR(32) NOT NULL,
  points INT NOT NULL,
  part_id INT NOT NULL,
  m_name CHAR(32) NOT NULL,
  PRIMARY KEY (t_name),
  FOREIGN KEY (part_id, m_name) REFERENCES Supplies(part_id, m_name),
  UNIQUE (Car)
);

CREATE TABLE Constructor
(
  points INT NOT NULL,
  t_name CHAR(32) NOT NULL,
  c_name CHAR(32) NOT NULL,
  PRIMARY KEY (points, t_name, c_name),
  FOREIGN KEY (t_name) REFERENCES Teams(t_name),
  FOREIGN KEY (c_name) REFERENCES Circuit(c_name)
);

CREATE TABLE recruits
(
  t_name CHAR(32) NOT NULL,
  d_name CHAR(32) NOT NULL,
  PRIMARY KEY (t_name, d_name),
  FOREIGN KEY (t_name) REFERENCES Teams(t_name),
  FOREIGN KEY (d_name) REFERENCES Drivers(d_name)
);

CREATE TABLE official_sponsor
(
  t_name CHAR(32) NOT NULL,
  s_name CHAR(32) NOT NULL,
  PRIMARY KEY (t_name, s_name),
  FOREIGN KEY (t_name) REFERENCES Teams(t_name),
  FOREIGN KEY (s_name) REFERENCES Sponsor(s_name)
);

CREATE TABLE Formula_1
(
  year INT NOT NULL,
  constructor_table VARCHAR(32) NOT NULL,
  driver_table_ VARCHAR(32) NOT NULL,
  p_name CHAR(32) NOT NULL,
  PRIMARY KEY (year),
  FOREIGN KEY (p_name) REFERENCES Tyre(p_name)
);

CREATE TABLE global_sponsor
(
  year INT NOT NULL,
  s_name CHAR(32) NOT NULL,
  PRIMARY KEY (year, s_name),
  FOREIGN KEY (year) REFERENCES Formula_1(year),
  FOREIGN KEY (s_name) REFERENCES Sponsor(s_name)
);

CREATE TABLE races
(
  year INT NOT NULL,
  c_name CHAR(32) NOT NULL,
  PRIMARY KEY (year, c_name),
  FOREIGN KEY (year) REFERENCES Formula_1(year),
  FOREIGN KEY (c_name) REFERENCES Circuit(c_name)
);

CREATE TABLE consists
(
  year INT NOT NULL,
  t_name CHAR(32) NOT NULL,
  PRIMARY KEY (t_name, year),
  FOREIGN KEY (t_name) REFERENCES Teams(t_name),
  FOREIGN KEY (year) REFERENCES Formula_1(year)
);
