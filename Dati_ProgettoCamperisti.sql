INSERT INTO `mydb`.`viaggiatore` (`ID_Viaggiatore`, `Nome`, `Cognome`, `Registrato`) VALUES ('X8100', 'Christian', 'Garozzo', '1');
INSERT INTO `mydb`.`viaggiatore` (`ID_Viaggiatore`, `Nome`, `Cognome`, `Registrato`) VALUES ('X8101', 'Giuseppe', 'Cavallaro', '0');
INSERT INTO `mydb`.`viaggiatore` (`ID_Viaggiatore`, `Nome`, `Cognome`, `Registrato`) VALUES ('X8102', 'Calogero', 'Lo Leggio', '1');
INSERT INTO `mydb`.`viaggiatore` (`ID_Viaggiatore`, `Nome`, `Cognome`, `Registrato`) VALUES ('X8103', 'Enzo', 'Barba', '1');
INSERT INTO `mydb`.`viaggiatore` (`ID_Viaggiatore`, `Nome`, `Cognome`, `Registrato`) VALUES ('X8104', 'Carlo', 'Baudo', '0');
INSERT INTO `mydb`.`viaggiatore` (`ID_Viaggiatore`, `Nome`, `Cognome`, `Registrato`) VALUES ('X8105', 'Andrea', 'Barreca', '1');
INSERT INTO `mydb`.`proprietario` (`ID_Viaggiatore`, `ID_Mezzo`) VALUES ('X8105', 'M01');
INSERT INTO `mydb`.`mezzo` (`ID_Mezzo`, `Targa`, `TipologiaMezzo`) VALUES ('M01', 'XJ99A', 'Camper');
INSERT INTO `mydb`.`mezzo` (`ID_Mezzo`, `Targa`, `TipologiaMezzo`) VALUES ('M02', 'XK88A', 'AutoCaravan');
INSERT INTO `mydb`.`mezzo` (`ID_Mezzo`, `Targa`, `TipologiaMezzo`) VALUES ('M03', 'HK77B', 'MotorHome');
INSERT INTO `mydb`.`spot` (`ID_Spot`, `TipologiaSpot`, `Regione`, `Luogo`) VALUES ('S01', 'Camper', 'Sicilia', 'Taormina');
INSERT INTO `mydb`.`viaggio` (`Data`, `Viaggiatore_ID_Viaggiatore`, `Spot_ID_Spot`) VALUES ('24/07/21', 'X8105', 'S01');
INSERT INTO `mydb`.`viaggio` (`Data`, `Viaggiatore_ID_Viaggiatore`, `Spot_ID_Spot`) VALUES ('02/09/94', 'X8100', 'S01');
INSERT INTO `mydb`.`recensione` (`ID_Recensione`, `Valutazione`, `Spot_ID_Spot`, `Testo`) VALUES ('R01', '5', 'S01', 'Fantastico!');
INSERT INTO `mydb`.`scrive` (`Viaggiatore_ID_Viaggiatore`, `Recensione_ID_Recensione`) VALUES ('X8105', 'R01');
INSERT INTO `mydb`.`valuta` (`Recensione_ID_Recensione`, `Viaggiatore_ID_Viaggiatore`) VALUES ('R01', 'X8105');

