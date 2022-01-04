\c f1
INSERT INTO Manufactur VALUES ('Peter Bonnington', 'Mercedes', 'Germany');
INSERT INTO Manufactur VALUES ('Gianpiero Lambiase', 'RedBull', 'Austria');
INSERT INTO Manufactur VALUES ('Jock Clear', 'Ferrari', 'Italy');
INSERT INTO Manufactur VALUES ('Pat Symonds', 'Renault', 'Britain');

INSERT INTO Parts VALUES (1, 'Mercedes');
INSERT INTO Parts VALUES (2, 'Mercedes');
INSERT INTO Parts VALUES (3, 'Mercedes');
INSERT INTO Parts VALUES (4, 'Mercedes');
INSERT INTO Parts VALUES (1, 'RedBull');
INSERT INTO Parts VALUES (3, 'RedBull');
INSERT INTO Parts VALUES (1, 'Ferrari');
INSERT INTO Parts VALUES (2, 'Ferrari');
INSERT INTO Parts VALUES (4, 'Ferrari');
INSERT INTO Parts VALUES (1, 'Renault');

INSERT INTO Race_Control VALUES ('Michael Masi', 'Emanuele Pirro', 'Bernd Maylander', ' Alan van der Merwe', 'Will Buxton');

INSERT INTO Supplies VALUES (1, 'Mercedes');
INSERT INTO Supplies VALUES (2, 'Mercedes');
INSERT INTO Supplies VALUES (3, 'Mercedes');
INSERT INTO Supplies VALUES (4, 'Mercedes');
INSERT INTO Supplies VALUES (1, 'RedBull');
INSERT INTO Supplies VALUES (3, 'RedBull');
INSERT INTO Supplies VALUES (1, 'Ferrari');
INSERT INTO Supplies VALUES (2, 'Ferrari');
INSERT INTO Supplies VALUES (4, 'Ferrari');
INSERT INTO Supplies VALUES (1, 'Renault');

INSERT INTO Circuit VALUES ('Bahrain International Circuit', 1.31, 15, 5.41, 3, 'Bahrain', 'Michael Masi');
INSERT INTO Circuit VALUES ('Algarve International Circuit', 1.18, 15, 4.65, 2, 'Portugal', 'Michael Masi');
INSERT INTO Circuit VALUES ('Circuit de Barcelona-Catalunya', 1.18, 16, 4.67, 2, 'Spain', 'Michael Masi');
INSERT INTO Circuit VALUES ('Circuit de Monaco', 1.12, 19, 3.37, 2, 'Monaco', 'Michael Masi');
INSERT INTO Circuit VALUES ('Baku City Circuit', 1.43, 20, 6.00, 2, 'Azerbaijan', 'Michael Masi');
INSERT INTO Circuit VALUES ('Circuit Paul Ricard', 1.32, 15, 5.84, 2, 'France', 'Michael Masi');
INSERT INTO Circuit VALUES ('Red Bull Ring', 1.05, 10, 4.31, 3, 'Austria', 'Michael Masi');
INSERT INTO Circuit VALUES ('Silverstone Circuit', 1.28, 19, 5.89, 2, 'Britain', 'Michael Masi');
INSERT INTO Circuit VALUES ('Hungaroring', 1.16, 14, 4.38, 2, 'Hungary', 'Michael Masi');
INSERT INTO Circuit VALUES ('Circuit de Spa-Francorchamps', 1.46, 20, 7.00, 2, 'Belgium', 'Michael Masi');
INSERT INTO Circuit VALUES ('Monza Circuit', 1.21, 11, 5.79, 2, 'Italy', 'Michael Masi');
INSERT INTO Circuit VALUES ('Interlagos Circuit', 1.10, 15, 4.30, 2, 'Brazil', 'Michael Masi');
INSERT INTO Circuit VALUES ('Yas Marina Circuit', 1.39, 21, 5.55, 2, 'UAE', 'Michael Masi');

INSERT INTO Drivers VALUES ('Lewis Hamilton', 177, 36, 'Britain');
INSERT INTO Drivers VALUES ('Valterri Bottas', 65, 32, 'Finland');
INSERT INTO Drivers VALUES ('Max Verstappen', 55, 24, 'Dutch');
INSERT INTO Drivers VALUES ('Sergio Perez', 14, 31, 'Mexico');
INSERT INTO Drivers VALUES ('Lando Norris', 5, 21, 'Britain');
INSERT INTO Drivers VALUES ('Daniel Ricciardo', 32, 32, 'Australia');
INSERT INTO Drivers VALUES ('Charles Leclerc', 13, 24, 'Monaco');
INSERT INTO Drivers VALUES ('Carlos Sainz', 5, 27, 'Spain');
INSERT INTO Drivers VALUES ('Esteban Ocon', 2, 25, 'French');
INSERT INTO Drivers VALUES ('Fernando Alonso', 97, 40, 'Spain');
INSERT INTO Drivers VALUES ('Pierre Gasly', 3, 25, 'French');
INSERT INTO Drivers VALUES ('Yuki Tsunoda', 0, 20, 'Japan');
INSERT INTO Drivers VALUES ('Sebastian Vettel', 122, 34, 'German');
INSERT INTO Drivers VALUES ('Lance Stroll', 3, 22, 'Canada');
INSERT INTO Drivers VALUES ('Kimi Raikkonen', 102, 42, 'Finland');
INSERT INTO Drivers VALUES ('Antonio Giovinazzi', 0, 27, 'Italy');
INSERT INTO Drivers VALUES ('George Russell', 1, 23, 'Britain');
INSERT INTO Drivers VALUES ('Nicholas Latifi', 0, 26, 'Canadian');
INSERT INTO Drivers VALUES ('Mick Schumacher', 0, 21, 'German');

INSERT INTO Driver_Table VALUES (287, 8, 'Max Verstappen');
INSERT INTO Driver_Table VALUES (275, 3, 'Lewis Hamilton');
INSERT INTO Driver_Table VALUES (185, 2, 'Valterri Bottas');
INSERT INTO Driver_Table VALUES (150, 0, 'Sergio Perez');
INSERT INTO Driver_Table VALUES (149, 1, 'Lando Norris');
INSERT INTO Driver_Table VALUES (126, 2, 'Charles Leclerc');
INSERT INTO Driver_Table VALUES (122, 0, 'Carlos Sainz');
INSERT INTO Driver_Table VALUES (105, 0, 'Daniel Ricciardo');
INSERT INTO Driver_Table VALUES (74, 0, 'Pierre Gasly');
INSERT INTO Driver_Table VALUES (58, 0, 'Fernando Alonso');
INSERT INTO Driver_Table VALUES (46, 0, 'Esteban Ocon');
INSERT INTO Driver_Table VALUES (36, 0, 'Sebastian Vettel');
INSERT INTO Driver_Table VALUES (26, 0, 'Lance Stroll');
INSERT INTO Driver_Table VALUES (20, 0, 'Yuki Tsunoda');
INSERT INTO Driver_Table VALUES (16, 0, 'George Russell');
INSERT INTO Driver_Table VALUES (7, 0, 'Nicholas Latifi');
INSERT INTO Driver_Table VALUES (6, 0, 'Kimi Raikkonen');
INSERT INTO Driver_Table VALUES (1, 0, 'Antonio Giovinazzi');
INSERT INTO Driver_Table VALUES (0, 0, 'Mick Schumacher');

INSERT INTO competes VALUES (25, 'Bahrain International Circuit', 'Lewis Hamilton');
INSERT INTO competes VALUES (25, 'Algarve International Circuit', 'Lewis Hamilton');
INSERT INTO competes VALUES (25, 'Circuit de Barcelona-Catalunya', 'Lewis Hamilton');
INSERT INTO competes VALUES (25, 'Circuit de Monaco', 'Max Verstappen');
INSERT INTO competes VALUES (25, 'Baku City Circuit', 'Sergio Perez');
INSERT INTO competes VALUES (25, 'Circuit Paul Ricard', 'Max Verstappen');
INSERT INTO competes VALUES (25, 'Red Bull Ring', 'Max Verstappen');
INSERT INTO competes VALUES (25, 'Silverstone Circuit', 'Lewis Hamilton');
INSERT INTO competes VALUES (25, 'Hungaroring', 'Esteban Ocon');
INSERT INTO competes VALUES (25, 'Circuit de Spa-Francorchamps', 'Max Verstappen');
INSERT INTO competes VALUES (25, 'Monza Circuit', 'Daniel Ricciardo');

INSERT INTO Sponsor VALUES ('petronas', 'fuel');
INSERT INTO Sponsor VALUES ('rolex', 'watch');
INSERT INTO Sponsor VALUES ('DHL', 'shipping');
INSERT INTO Sponsor VALUES ('AWS', 'Cloud');
INSERT INTO Sponsor VALUES ('Honda', 'Automobile');

INSERT INTO regional_sponsor VALUES ('petronas', 'Hungaroring');
INSERT INTO regional_sponsor VALUES ('AWS', 'Circuit de Spa-Francorchamps');

INSERT INTO Tyre VALUES ('pirelli');

INSERT INTO compounds VALUES ('hard', 'pirelli');
INSERT INTO compounds VALUES ('medium', 'pirelli');
INSERT INTO compounds VALUES ('soft', 'pirelli');

INSERt INTO Teams VALUES ('Mercedes', 'Toto Wolff', 'Britain', 'W12', 460, 1, 'Mercedes');
INSERt INTO Teams VALUES ('Red Bull', 'Honnor', 'Austria', 'RB16', 437, 1, 'RedBull');
INSERT INTO Teams VALUES ('Mclaren', 'Zack Brown', 'Britain', 'MP4', 254, 1, 'Mercedes');
INSERT INTO Teams VALUES ('Ferrari', 'Mattia Binoto', 'Italy', 'SF90', 250, 1, 'Ferrari');
INSERT INTO Teams VALUES ('Alpine', 'Laurent Rossi', 'Britain', 'A521', 104, 1, 'Renault');
INSERT INTO Teams VALUES ('Alpha Tauri', 'Helmut Marko', 'Austria', 'AT01', 94, 1, 'RedBull');
INSERT INTO Teams VALUES ('Aston Martin', 'Otmmar S', 'Britain', 'AMR21', 62, 1, 'Mercedes');
INSERT INTO Teams VALUES ('Williams', 'Clarie Williams', 'Britain', 'FW43B', 23, 1, 'Mercedes');
INSERT INTO Teams VALUES ('Alpha Romeo', 'Fred Vasseur', 'Italy', 'C41', 7, 1, 'Ferrari');
INSERT INTO Teams VALUES ('Haas', 'Gunther Steiner', 'USA', 'VF21', 0, 1, 'Ferrari');

INSERT INTO Constructor VALUES (41, 'Mercedes', 'Bahrain International Circuit');
INSERT INTO Constructor VALUES (30, 'Red Bull', 'Algarve International Circuit');
INSERT INTO Constructor VALUES (37, 'Red Bull', 'Circuit de Monaco');
INSERT INTO Constructor VALUES (30, 'Mercedes', 'Circuit Paul Ricard');
INSERT INTO Constructor VALUES (37, 'Red Bull', 'Red Bull Ring');
INSERT INTO Constructor VALUES (37, 'Alpine', 'Hungaroring');
INSERT INTO Constructor VALUES (45, 'Mclaren', 'Monza Circuit');

INSERT INTO recruits VALUES ('Mercedes', 'Lewis Hamilton');
INSERT INTO recruits VALUES ('Mercedes', 'Valterri Bottas');
INSERT INTO recruits VALUES ('Red Bull', 'Max Verstappen');
INSERT INTO recruits VALUES ('Red Bull', 'Sergio Perez');
INSERT INTO recruits VALUES ('Ferrari', 'Charles Leclerc');
INSERT INTO recruits VALUES ('Ferrari', 'Carlos Sainz');
INSERT INTO recruits VALUES ('Alpha Tauri', 'Pierre Gasly');
INSERT INTO recruits VALUES ('Alpha Tauri', 'Yuki Tsunoda');
INSERT INTO recruits VALUES ('Alpine', 'Fernando Alonso');
INSERT INTO recruits VALUES ('Alpine', 'Esteban Ocon');
INSERT INTO recruits VALUES ('Mclaren', 'Lando Norris');
INSERT INTO recruits VALUES ('Mclaren', 'Daniel Ricciardo');

INSERT INTO official_sponsor VALUES ('Mercedes', 'petronas');
INSERT INTO official_sponsor VALUES ('Ferrari', 'AWS');
INSERT INTO official_sponsor VALUES ('Red Bull', 'Honda');

INSERT INTO Formula_1 VALUES (2021, 'constructor_19', 'drivers_19', 'pirelli');

INSERT INTO global_sponsor VALUES ( 2021, 'DHL');
INSERT INTO global_sponsor VALUES ( 2021, 'rolex');

INSERT INTO races VALUES ( 2021, 'Bahrain International Circuit');
INSERT INTO races VALUES ( 2021, 'Algarve International Circuit');
INSERT INTO races VALUES ( 2021, 'Circuit de Barcelona-Catalunya');
INSERT INTO races VALUES ( 2021, 'Circuit de Monaco');
INSERT INTO races VALUES ( 2021, 'Baku City Circuit');
INSERT INTO races VALUES ( 2021, 'Red Bull Ring');
INSERT INTO races VALUES ( 2021, 'Silverstone Circuit');
INSERT INTO races VALUES ( 2021, 'Hungaroring');

INSERT INTO consists VALUES (2021, 'Mercedes');
INSERT INTO consists VALUES (2021, 'Ferrari');
INSERT INTO consists VALUES (2021, 'Mclaren');
INSERT INTO consists VALUES (2021, 'Red Bull');
INSERT INTO consists VALUES (2021, 'Alpha Tauri');
INSERT INTO consists VALUES (2021, 'Aston Martin');
INSERT INTO consists VALUES (2021, 'Williams');
INSERT INTO consists VALUES (2021, 'Haas');
