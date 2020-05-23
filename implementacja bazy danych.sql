CREATE TABLE "Użytkownik" (
	"id_użytkownik" serial NOT NULL,
	"imię" varchar NOT NULL,
	"nazwisko" varchar NOT NULL,
	"email" varchar NOT NULL,
	"tytuł_naukowy" varchar,
	CONSTRAINT "Użytkownik_pk" PRIMARY KEY ("id_użytkownik")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "Użytkownik-kurs" (
	"id_użytkownik-kurs" serial NOT NULL,
	"ocena" FLOAT NOT NULL,
	"maks_punktów" FLOAT NOT NULL,
	"zdobyte_punkty" FLOAT NOT NULL,
	"stopień_ukończenia" integer NOT NULL,
	"id_uzytkownik" integer NOT NULL,
	"id_kurs" integer NOT NULL,
	CONSTRAINT "Użytkownik-kurs_pk" PRIMARY KEY ("id_użytkownik-kurs")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "Kurs" (
	"id_kurs" serial NOT NULL,
	"nazwa_kursu" varchar NOT NULL,
	"opis_kursu" TEXT NOT NULL,
	"ocena" FLOAT NOT NULL,
	"ilość_użytkowników" integer,
	"id_prowadzący" integer NOT NULL,
	"id_twórca" integer NOT NULL,
	CONSTRAINT "Kurs_pk" PRIMARY KEY ("id_kurs")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "Moduł" (
	"id_moduł" serial NOT NULL,
	"nazwa" varchar NOT NULL,
	"czas_rozpoczęcia" DATE NOT NULL,
	"czas_zamknięcia" DATE,
	CONSTRAINT "Moduł_pk" PRIMARY KEY ("id_moduł")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "Lekcja" (
	"id_lekcja" serial NOT NULL,
	"nazwa_lekcji" varchar NOT NULL,
	CONSTRAINT "Lekcja_pk" PRIMARY KEY ("id_lekcja")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "Zadanie" (
	"id_zadanie" serial NOT NULL,
	"treść_zadania" TEXT NOT NULL,
	"maks_puktów" FLOAT NOT NULL,
	CONSTRAINT "Zadanie_pk" PRIMARY KEY ("id_zadanie")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "Certyfikat" (
	"id_certyfikat" serial NOT NULL,
	"nazwa_certyfikatu" varchar NOT NULL,
	"opis" TEXT NOT NULL,
	"uzyskana_ocena" FLOAT NOT NULL,
	"id_kurs" integer NOT NULL,
	CONSTRAINT "Certyfikat_pk" PRIMARY KEY ("id_certyfikat")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "Uzyskane-certyfikaty" (
	"id_certyfikat" integer NOT NULL,
	"id_użytkownik" integer NOT NULL
) WITH (
  OIDS=FALSE
);



CREATE TABLE "Powiadomienia" (
	"id_powiadomienia" serial NOT NULL,
	"treść_powiadomienia" TEXT NOT NULL,
	"id_kurs" integer NOT NULL,
	"id_użytkownik" integer NOT NULL,
	CONSTRAINT "Powiadomienia_pk" PRIMARY KEY ("id_powiadomienia")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "Kategorie_kursów" (
	"id_Kategorie_kursów" serial NOT NULL,
	"nazwa_kategorii" varchar NOT NULL UNIQUE,
	CONSTRAINT "Kategorie_kursów_pk" PRIMARY KEY ("id_Kategorie_kursów")
) WITH (
  OIDS=FALSE
);




ALTER TABLE "Użytkownik-kurs" ADD CONSTRAINT "Użytkownik-kurs_fk0" FOREIGN KEY ("id_uzytkownik") REFERENCES "Użytkownik"("id_użytkownik");
ALTER TABLE "Użytkownik-kurs" ADD CONSTRAINT "Użytkownik-kurs_fk1" FOREIGN KEY ("id_kurs") REFERENCES "Kurs"("id_kurs");

ALTER TABLE "Kurs" ADD CONSTRAINT "Kurs_fk0" FOREIGN KEY ("id_prowadzący") REFERENCES "Użytkownik"("id_użytkownik");
ALTER TABLE "Kurs" ADD CONSTRAINT "Kurs_fk1" FOREIGN KEY ("id_twórca") REFERENCES "Użytkownik"("id_użytkownik");




ALTER TABLE "Certyfikat" ADD CONSTRAINT "Certyfikat_fk0" FOREIGN KEY ("id_kurs") REFERENCES "Kurs"("id_kurs");

ALTER TABLE "Uzyskane-certyfikaty" ADD CONSTRAINT "Uzyskane-certyfikaty_fk0" FOREIGN KEY ("id_certyfikat") REFERENCES "Certyfikat"("id_certyfikat");
ALTER TABLE "Uzyskane-certyfikaty" ADD CONSTRAINT "Uzyskane-certyfikaty_fk1" FOREIGN KEY ("id_użytkownik") REFERENCES "Użytkownik"("id_użytkownik");

ALTER TABLE "Powiadomienia" ADD CONSTRAINT "Powiadomienia_fk0" FOREIGN KEY ("id_kurs") REFERENCES "Kurs"("id_kurs");
ALTER TABLE "Powiadomienia" ADD CONSTRAINT "Powiadomienia_fk1" FOREIGN KEY ("id_użytkownik") REFERENCES "Użytkownik"("id_użytkownik");

CREATE TABLE "Kurs-kategoria" (
	"id_kurs" integer NOT NULL,
	"id_kategoria" integer NOT NULL
) WITH (
  OIDS=FALSE
);

ALTER TABLE "Kurs-kategoria" ADD CONSTRAINT "Kurs-kategoria_fk0" FOREIGN KEY ("id_kurs") REFERENCES "Kurs"("id_kurs");
ALTER TABLE "Kurs-kategoria" ADD CONSTRAINT "Kurs-kategoria_fk1" FOREIGN KEY ("id_kategoria") REFERENCES "Kategorie_kursów"("id_Kategorie_kursów");

CREATE TABLE "Kurs-moduł" (
	"id_kurs" integer NOT NULL,
	"id_moduł" integer NOT NULL
) WITH (
  OIDS=FALSE
);

ALTER TABLE "Kurs-moduł" ADD CONSTRAINT "Kurs-moduł_fk0" FOREIGN KEY ("id_kurs") REFERENCES "Kurs"("id_kurs");
ALTER TABLE "Kurs-moduł" ADD CONSTRAINT "Kurs-moduł_fk1" FOREIGN KEY ("id_moduł") REFERENCES "Moduł"("id_moduł");

CREATE TABLE "Moduł-lekcja" (
	"id_moduł" integer NOT NULL,
	"id_lekcja" integer NOT NULL
) WITH (
  OIDS=FALSE
);


ALTER TABLE "Moduł-lekcja" ADD CONSTRAINT "Moduł-lekcja_fk0" FOREIGN KEY ("id_moduł") REFERENCES "Moduł"("id_moduł");
ALTER TABLE "Moduł-lekcja" ADD CONSTRAINT "Moduł-lekcja_fk1" FOREIGN KEY ("id_lekcja") REFERENCES "Lekcja"("id_lekcja");

CREATE TABLE "Lekcja-zadania" (
	"id_lekcja" integer NOT NULL,
	"id_zadanie" integer NOT NULL
) WITH (
  OIDS=FALSE
);


ALTER TABLE "Lekcja-zadania" ADD CONSTRAINT "Lekcja-zadania_fk0" FOREIGN KEY ("id_lekcja") REFERENCES "Lekcja"("id_lekcja");
ALTER TABLE "Lekcja-zadania" ADD CONSTRAINT "Lekcja-zadania_fk1" FOREIGN KEY ("id_zadanie") REFERENCES "Zadanie"("id_zadanie");


CREATE TABLE "Wykonane-zadania" (
	"zdobyte_punkty" float NOT NULL,
	"czy_wykonane" bool NOT NULL,
	"czas_wynonania" date,
	"id_zadanie" integer NOT NULL,
	"id_użytkownik-kurs" integer NOT NULL
) WITH (
  OIDS=FALSE
);


ALTER TABLE "Wykonane-zadania" ADD CONSTRAINT "Wykonane-zadania_fk0" FOREIGN KEY ("id_zadanie") REFERENCES "Zadanie"("id_zadanie");
ALTER TABLE "Wykonane-zadania" ADD CONSTRAINT "Wykonane-zadania_fk1" FOREIGN KEY ("id_użytkownik-kurs") REFERENCES "Użytkownik-kurs"("id_użytkownik-kurs");

