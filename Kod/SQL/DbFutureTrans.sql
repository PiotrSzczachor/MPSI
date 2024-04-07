/* ---------------------------------------------------- */
/*  Generated by Enterprise Architect Version 14.1 		*/
/*  Created On : 05-kwi-2024 21:57:23 				*/
/*  DBMS       : MSAccess 						*/
/* ---------------------------------------------------- */

/* Drop Foreign Key Constraints */

ALTER TABLE [Ci�ar�wka] DROP CONSTRAINT [FK_Ci�ar�wka_Pojazd]

ALTER TABLE [Ci�ar�wka] DROP CONSTRAINT [FK_Ci�ar�wka_przypisanie]

ALTER TABLE [Ci�ar�wka] DROP CONSTRAINT [FK_Ci�ar�wka_Pojazd]

ALTER TABLE [Dyspozytor] DROP CONSTRAINT [FK_Dyspozytor_Osoba]

ALTER TABLE [Dyspozytor] DROP CONSTRAINT [FK_Dyspozytor_zarz�dza]

ALTER TABLE [Dyspozytor] DROP CONSTRAINT [FK_Dyspozytor_Osoba]

ALTER TABLE [Kierowca] DROP CONSTRAINT [FK_Kierowca_przechowuje]

ALTER TABLE [Kierowca] DROP CONSTRAINT [FK_Kierowca_Osoba]

ALTER TABLE [Kierowca] DROP CONSTRAINT [FK_Kierowca_Osoba]

ALTER TABLE [Kierownik] DROP CONSTRAINT [FK_Kierownik_Osoba]

ALTER TABLE [Kierownik] DROP CONSTRAINT [FK_Kierownik_Osoba]

ALTER TABLE [ListaKierowc�w] DROP CONSTRAINT [FK_Lista kierowc�w_zarz�dza]

ALTER TABLE [ListaPojazd�w] DROP CONSTRAINT [FK_Lista pojazd�w_zarz�dza]

ALTER TABLE [Naczepa] DROP CONSTRAINT [FK_Naczepa_przypisanie]

ALTER TABLE [Naczepa] DROP CONSTRAINT [FK_Naczepa_Pojazd]

ALTER TABLE [Naczepa] DROP CONSTRAINT [FK_Naczepa_Pojazd]

ALTER TABLE [Pojazd] DROP CONSTRAINT [FK_Pojazd_przechowuje]

ALTER TABLE [Po�o�enieCi�ar�wki] DROP CONSTRAINT [FK_Po�o�enie ci�ar�wki_przypisanie]

ALTER TABLE [PowiadomienieE-mail] DROP CONSTRAINT [FK_Powiadomienie e-mail_otrzymuje]

ALTER TABLE [PowiadomienieE-mail] DROP CONSTRAINT [FK_Powiadomienie e-mail_dotyczy]

ALTER TABLE [PunktDocelowy] DROP CONSTRAINT [FK_Punkt docelowy_sk�ada si� z]

ALTER TABLE [Raport] DROP CONSTRAINT [FK_Raport_generuje]

ALTER TABLE [Raport] DROP CONSTRAINT [FK_Raport_przechowuje]

ALTER TABLE [Raport] DROP CONSTRAINT [FK_Raport_generowany na podstawie]

ALTER TABLE [Spedytor] DROP CONSTRAINT [FK_Spedytor_Osoba]

ALTER TABLE [Spedytor] DROP CONSTRAINT [FK_Spedytor_Osoba]

ALTER TABLE [Towar] DROP CONSTRAINT [FK_Towar_dotyczy przewozu]

ALTER TABLE [ZdarzenieNaTrasie] DROP CONSTRAINT [FK_Zdarzenie na trasie_posiada]

ALTER TABLE [Zlecenie] DROP CONSTRAINT [FK_Zlecenie_przechowuje]

ALTER TABLE [Zlecenie] DROP CONSTRAINT [FK_Zlecenie_dodaje]

ALTER TABLE [Zlecenie] DROP CONSTRAINT [FK_Zlecenie_dotyczy]

/* Drop Tables */

DROP TABLE [Ci�ar�wka]

DROP TABLE [Dyspozytor]

DROP TABLE [Kierowca]

DROP TABLE [Kierownik]

DROP TABLE [ListaKierowc�w]

DROP TABLE [ListaPojazd�w]

DROP TABLE [ListaRaport�w]

DROP TABLE [ListaZlece�]

DROP TABLE [Naczepa]

DROP TABLE [Osoba]

DROP TABLE [Pojazd]

DROP TABLE [Po�o�enieCi�ar�wki]

DROP TABLE [PowiadomienieE-mail]

DROP TABLE [PunktDocelowy]

DROP TABLE [Raport]

DROP TABLE [Spedytor]

DROP TABLE [SzablonRaportu]

DROP TABLE [Towar]

DROP TABLE [Trasa]

DROP TABLE [ZdarzenieNaTrasie]

DROP TABLE [Zlecenie]

/* Create Tables */

CREATE TABLE [Ci�ar�wka]
(
	[HistoriaTankowania] varchar NULL,
	[Ci�ar�wkaID] Short NOT NULL,
	[KierowcaID] Short NULL
)

CREATE TABLE [Dyspozytor]
(
	[Przyj�teZlecenia] varchar NULL,
	[DyspozytorID] Short NOT NULL,
	[ListaZlece�ID] Short NOT NULL
)

CREATE TABLE [Kierowca]
(
	[HistoriaZlece�] varchar NULL,
	[NumerKierowcy] varchar NULL,
	[KierowcaID] Short NOT NULL,
	[ListaKierowc�wID] Short NULL
)

CREATE TABLE [Kierownik]
(
	[KierownikID] Short NOT NULL
)

CREATE TABLE [ListaKierowc�w]
(
	[ListaKierowc�wID] Short NOT NULL,
	[KierownikID] Short NOT NULL
)

CREATE TABLE [ListaPojazd�w]
(
	[ListaPojazd�wID] Short NOT NULL,
	[KierownikID] Short NOT NULL
)

CREATE TABLE [ListaRaport�w]
(
	[ListaRaport�wID] Short NOT NULL
)

CREATE TABLE [ListaZlece�]
(
	[ListaZlece�ID] Short NOT NULL
)

CREATE TABLE [Naczepa]
(
	[NaczepaID] Short NOT NULL,
	[KierowcaID] Short NULL
)

CREATE TABLE [Osoba]
(
	[Email] varchar NULL,
	[Imi�] varchar NULL,
	[Nazwisko] varchar NULL,
	[Pesel] varchar NULL,
	[Telefon] varchar NULL,
	[Uprawnienia] varchar NULL,
	[OsobaID] Short NOT NULL
)

CREATE TABLE [Pojazd]
(
	[Marka] varchar NULL,
	[Model] varchar NULL,
	[NumerRejestracyjny] varchar NULL,
	[Przebieg] varchar NULL,
	[Status] Short NULL,
	[PojazdID] Short NOT NULL,
	[ListaPojazd�wID] Short NULL
)

CREATE TABLE [Po�o�enieCi�ar�wki]
(
	[Czas] DateTime NULL,
	[Wsp�rz�dne] varchar NULL,
	[Po�o�enieCi�ar�wkiID] Short NOT NULL,
	[ZdarzenieNaTrasieID] Short NOT NULL
)

CREATE TABLE [PowiadomienieE-mail]
(
	[CzasAkceptacjiZlecenia] DateTime NULL,
	[Status] Short NULL,
	[PowiadomienieE-mailID] Short NOT NULL,
	[KierowcaID] Short NULL,
	[ZlecenieID] Short NULL
)

CREATE TABLE [PunktDocelowy]
(
	[Nazwa] varchar NULL,
	[Odwiedzony] Byte NULL,
	[Wsp�rz�dne] varchar NULL,
	[PunktDocelowyID] Short NOT NULL,
	[TrasaID] Short NOT NULL
)

CREATE TABLE [Raport]
(
	[Autor] varchar NULL,
	[CzasWygenerowania] DateTime NULL,
	[Rodzaj] Short NULL,
	[RaportID] Short NOT NULL,
	[KierownikID] Short NULL,
	[ListaRaport�wID] Short NULL,
	[SzablonRaportuID] Short NULL
)

CREATE TABLE [Spedytor]
(
	[DodaneZlecenia] varchar NULL,
	[FirmaSpedycyjna] varchar NULL,
	[SpedytorID] Short NOT NULL
)

CREATE TABLE [SzablonRaportu]
(
	[Struktura] Short NULL,
	[Styl] Short NULL,
	[SzablonRaportuID] Short NOT NULL
)

CREATE TABLE [Towar]
(
	[Ilo��] Short NULL,
	[Jednostka] varchar NULL,
	[Nazwa] varchar NULL,
	[TowarID] Short NOT NULL,
	[ZlecenieID] Short NOT NULL
)

CREATE TABLE [Trasa]
(
	[CzasWyjazdu] DateTime NULL,
	[CzasZako�czenia] DateTime NULL,
	[D�ugo��] Double NULL,
	[TrasaID] Short NOT NULL
)

CREATE TABLE [ZdarzenieNaTrasie]
(
	[Opis] varchar NULL,
	[Rodzaj] Short NULL,
	[ZdarzenieNaTrasieID] Short NOT NULL,
	[TrasaID] Short NULL
)

CREATE TABLE [Zlecenie]
(
	[CzasDodania] DateTime NULL,
	[CzasPrzyj�ciaDoRealizacji] DateTime NULL,
	[CzasUko�czenia] DateTime NULL,
	[Id] Short NULL,
	[NazwaKlienta] varchar NULL,
	[Status] Short NULL,
	[ZlecenieID] Short NOT NULL,
	[ListaZlece�ID] Short NULL,
	[SpedytorID] Short NULL,
	[TrasaID] Short NULL
)

/* Create Primary Keys, Indexes, Uniques, Checks */

ALTER TABLE [Ci�ar�wka] ADD CONSTRAINT [PK_Ci�ar�wka]
	PRIMARY KEY ([Ci�ar�wkaID])

CREATE INDEX [IX_Ci�ar�wka] ON [Ci�ar�wka] ([Ci�ar�wkaID] ASC)

ALTER TABLE [Dyspozytor] ADD CONSTRAINT [PK_Dyspozytor]
	PRIMARY KEY ([DyspozytorID])

ALTER TABLE [Kierowca] ADD CONSTRAINT [PK_Kierowca]
	PRIMARY KEY ([KierowcaID])

CREATE INDEX [IX_Kierowca] ON [Kierowca] ([KierowcaID] ASC)

CREATE INDEX [IX_NumerKierowcy] ON [Kierowca] ([NumerKierowcy] ASC)

ALTER TABLE [Kierownik] ADD CONSTRAINT [PK_Kierownik]
	PRIMARY KEY ([KierownikID])

ALTER TABLE [ListaKierowc�w] ADD CONSTRAINT [PK_ListaKierowc�w]
	PRIMARY KEY ([ListaKierowc�wID])

ALTER TABLE [ListaPojazd�w] ADD CONSTRAINT [PK_ListaPojazd�w]
	PRIMARY KEY ([ListaPojazd�wID])

ALTER TABLE [ListaRaport�w] ADD CONSTRAINT [PK_ListaRaport�w]
	PRIMARY KEY ([ListaRaport�wID])

ALTER TABLE [ListaZlece�] ADD CONSTRAINT [PK_ListaZlece�]
	PRIMARY KEY ([ListaZlece�ID])

ALTER TABLE [Naczepa] ADD CONSTRAINT [PK_Naczepa]
	PRIMARY KEY ([NaczepaID])

CREATE INDEX [IX_Naczepa] ON [Naczepa] ([NaczepaID] ASC)

ALTER TABLE [Osoba] ADD CONSTRAINT [PK_Osoba]
	PRIMARY KEY ([OsobaID])

CREATE INDEX [IX_Imi�] ON [Osoba] ([Imi�] ASC)

CREATE INDEX [IX_Nazwisko] ON [Osoba] ([Nazwisko] ASC)

ALTER TABLE [Pojazd] ADD CONSTRAINT [PK_Pojazd]
	PRIMARY KEY ([PojazdID])

CREATE INDEX [IX_Pojazd] ON [Pojazd] ([PojazdID] ASC)

ALTER TABLE [Po�o�enieCi�ar�wki] ADD CONSTRAINT [PK_Po�o�enieCi�ar�wki]
	PRIMARY KEY ([Po�o�enieCi�ar�wkiID])

ALTER TABLE [PowiadomienieE-mail] ADD CONSTRAINT [PK_PowiadomienieE-mail]
	PRIMARY KEY ([PowiadomienieE-mailID])

ALTER TABLE [PunktDocelowy] ADD CONSTRAINT [PK_PunktDocelowy]
	PRIMARY KEY ([PunktDocelowyID])

CREATE INDEX [IX_PunktDocelowy] ON [PunktDocelowy] ([PunktDocelowyID] ASC)

ALTER TABLE [Raport] ADD CONSTRAINT [PK_Raport]
	PRIMARY KEY ([RaportID])

ALTER TABLE [Spedytor] ADD CONSTRAINT [PK_Spedytor]
	PRIMARY KEY ([SpedytorID])

CREATE INDEX [IX_Spedytor] ON [Spedytor] ([SpedytorID] ASC)

ALTER TABLE [SzablonRaportu] ADD CONSTRAINT [PK_SzablonRaportu]
	PRIMARY KEY ([SzablonRaportuID])

ALTER TABLE [Towar] ADD CONSTRAINT [PK_Towar]
	PRIMARY KEY ([TowarID])

ALTER TABLE [Trasa] ADD CONSTRAINT [PK_Trasa]
	PRIMARY KEY ([TrasaID])

ALTER TABLE [ZdarzenieNaTrasie] ADD CONSTRAINT [PK_ZdarzenieNaTrasie]
	PRIMARY KEY ([ZdarzenieNaTrasieID])

ALTER TABLE [Zlecenie] ADD CONSTRAINT [PK_Zlecenie]
	PRIMARY KEY ([ZlecenieID])

CREATE INDEX [IX_Zlecenie] ON [Zlecenie] ([ZlecenieID] ASC)

CREATE INDEX [IX_CzasUko�czenia] ON [Zlecenie] ([CzasUko�czenia] ASC)

/* Create Foreign Key Constraints */

ALTER TABLE [Ci�ar�wka] ADD CONSTRAINT [FK_Ci�ar�wka_Pojazd]
	FOREIGN KEY ([Ci�ar�wkaID]) REFERENCES [Pojazd] ([PojazdID])

ALTER TABLE [Ci�ar�wka] ADD CONSTRAINT [FK_Ci�ar�wka_przypisanie]
	FOREIGN KEY ([KierowcaID]) REFERENCES [Kierowca] ([KierowcaID])

ALTER TABLE [Ci�ar�wka] ADD CONSTRAINT [FK_Ci�ar�wka_Pojazd]
	FOREIGN KEY ([Ci�ar�wkaID]) REFERENCES [Pojazd] ([PojazdID])

ALTER TABLE [Dyspozytor] ADD CONSTRAINT [FK_Dyspozytor_Osoba]
	FOREIGN KEY ([DyspozytorID]) REFERENCES [Osoba] ([OsobaID])

ALTER TABLE [Dyspozytor] ADD CONSTRAINT [FK_Dyspozytor_zarz�dza]
	FOREIGN KEY ([ListaZlece�ID]) REFERENCES [ListaZlece�] ([ListaZlece�ID])

ALTER TABLE [Dyspozytor] ADD CONSTRAINT [FK_Dyspozytor_Osoba]
	FOREIGN KEY ([DyspozytorID]) REFERENCES [Osoba] ([OsobaID])

ALTER TABLE [Kierowca] ADD CONSTRAINT [FK_Kierowca_przechowuje]
	FOREIGN KEY ([ListaKierowc�wID]) REFERENCES [ListaKierowc�w] ([ListaKierowc�wID])

ALTER TABLE [Kierowca] ADD CONSTRAINT [FK_Kierowca_Osoba]
	FOREIGN KEY ([KierowcaID]) REFERENCES [Osoba] ([OsobaID])

ALTER TABLE [Kierowca] ADD CONSTRAINT [FK_Kierowca_Osoba]
	FOREIGN KEY ([KierowcaID]) REFERENCES [Osoba] ([OsobaID])

ALTER TABLE [Kierownik] ADD CONSTRAINT [FK_Kierownik_Osoba]
	FOREIGN KEY ([KierownikID]) REFERENCES [Osoba] ([OsobaID])

ALTER TABLE [Kierownik] ADD CONSTRAINT [FK_Kierownik_Osoba]
	FOREIGN KEY ([KierownikID]) REFERENCES [Osoba] ([OsobaID])

ALTER TABLE [ListaKierowc�w] ADD CONSTRAINT [FK_Lista kierowc�w_zarz�dza]
	FOREIGN KEY ([KierownikID]) REFERENCES [Kierownik] ([KierownikID])

ALTER TABLE [ListaPojazd�w] ADD CONSTRAINT [FK_Lista pojazd�w_zarz�dza]
	FOREIGN KEY ([KierownikID]) REFERENCES [Kierownik] ([KierownikID])

ALTER TABLE [Naczepa] ADD CONSTRAINT [FK_Naczepa_przypisanie]
	FOREIGN KEY ([KierowcaID]) REFERENCES [Kierowca] ([KierowcaID])

ALTER TABLE [Naczepa] ADD CONSTRAINT [FK_Naczepa_Pojazd]
	FOREIGN KEY ([NaczepaID]) REFERENCES [Pojazd] ([PojazdID])

ALTER TABLE [Naczepa] ADD CONSTRAINT [FK_Naczepa_Pojazd]
	FOREIGN KEY ([NaczepaID]) REFERENCES [Pojazd] ([PojazdID])

ALTER TABLE [Pojazd] ADD CONSTRAINT [FK_Pojazd_przechowuje]
	FOREIGN KEY ([ListaPojazd�wID]) REFERENCES [ListaPojazd�w] ([ListaPojazd�wID])

ALTER TABLE [Po�o�enieCi�ar�wki] ADD CONSTRAINT [FK_Po�o�enie ci�ar�wki_przypisanie]
	FOREIGN KEY ([ZdarzenieNaTrasieID]) REFERENCES [ZdarzenieNaTrasie] ([ZdarzenieNaTrasieID])

ALTER TABLE [PowiadomienieE-mail] ADD CONSTRAINT [FK_Powiadomienie e-mail_otrzymuje]
	FOREIGN KEY ([KierowcaID]) REFERENCES [Kierowca] ([KierowcaID])

ALTER TABLE [PowiadomienieE-mail] ADD CONSTRAINT [FK_Powiadomienie e-mail_dotyczy]
	FOREIGN KEY ([ZlecenieID]) REFERENCES [Zlecenie] ([ZlecenieID])

ALTER TABLE [PunktDocelowy] ADD CONSTRAINT [FK_Punkt docelowy_sk�ada si� z]
	FOREIGN KEY ([TrasaID]) REFERENCES [Trasa] ([TrasaID])

ALTER TABLE [Raport] ADD CONSTRAINT [FK_Raport_generuje]
	FOREIGN KEY ([KierownikID]) REFERENCES [Kierownik] ([KierownikID])

ALTER TABLE [Raport] ADD CONSTRAINT [FK_Raport_przechowuje]
	FOREIGN KEY ([ListaRaport�wID]) REFERENCES [ListaRaport�w] ([ListaRaport�wID])

ALTER TABLE [Raport] ADD CONSTRAINT [FK_Raport_generowany na podstawie]
	FOREIGN KEY ([SzablonRaportuID]) REFERENCES [SzablonRaportu] ([SzablonRaportuID])

ALTER TABLE [Spedytor] ADD CONSTRAINT [FK_Spedytor_Osoba]
	FOREIGN KEY ([SpedytorID]) REFERENCES [Osoba] ([OsobaID])

ALTER TABLE [Spedytor] ADD CONSTRAINT [FK_Spedytor_Osoba]
	FOREIGN KEY ([SpedytorID]) REFERENCES [Osoba] ([OsobaID])

ALTER TABLE [Towar] ADD CONSTRAINT [FK_Towar_dotyczy przewozu]
	FOREIGN KEY ([ZlecenieID]) REFERENCES [Zlecenie] ([ZlecenieID])

ALTER TABLE [ZdarzenieNaTrasie] ADD CONSTRAINT [FK_Zdarzenie na trasie_posiada]
	FOREIGN KEY ([TrasaID]) REFERENCES [Trasa] ([TrasaID])

ALTER TABLE [Zlecenie] ADD CONSTRAINT [FK_Zlecenie_przechowuje]
	FOREIGN KEY ([ListaZlece�ID]) REFERENCES [ListaZlece�] ([ListaZlece�ID])

ALTER TABLE [Zlecenie] ADD CONSTRAINT [FK_Zlecenie_dodaje]
	FOREIGN KEY ([SpedytorID]) REFERENCES [Spedytor] ([SpedytorID])

ALTER TABLE [Zlecenie] ADD CONSTRAINT [FK_Zlecenie_dotyczy]
	FOREIGN KEY ([TrasaID]) REFERENCES [Trasa] ([TrasaID])
