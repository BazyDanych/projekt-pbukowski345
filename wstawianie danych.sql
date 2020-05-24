INSERT INTO "Użytkownik" (id_użytkownik, imię, nazwisko, email, tytuł_naukowy) VALUES (1, 'Jan', 'Kowalski',  'jkowalski@gmail.com', 'profesor');
INSERT INTO "Użytkownik" (id_użytkownik, imię, nazwisko, email, tytuł_naukowy) VALUES (2, 'Janusz', 'Nowak',  'jnowak@gmail.com', 'profesor');
INSERT INTO "Użytkownik" (id_użytkownik, imię, nazwisko, email, tytuł_naukowy) VALUES (3, 'Daniel', 'Marczak',  'dmarczak@gmail.com', NULL);
INSERT INTO "Użytkownik" (id_użytkownik, imię, nazwisko, email, tytuł_naukowy) VALUES (4, 'Piotr', 'Malinowski',  'pmalinowski@gmail.com', NULL);
INSERT INTO "Użytkownik" (id_użytkownik, imię, nazwisko, email, tytuł_naukowy) VALUES (5, 'Hubert', 'Ostrowski',  'hostrowski@gmail.com', NULL);

INSERT INTO "Kurs" (id_kurs, nazwa_kursu, opis_kursu, ocena, ilość_użytkowników, id_prowadzący, id_twórca) VALUES (1, 'Matematyka dyskretna', 'Podstawowy kurs z matematki dyskretnej zawieracjący elementarne zagadnienia z tej dziedziny stanowiące wstęp do dalczej nauki.', 4.4, 2, 1, 1);
INSERT INTO "Kurs" (id_kurs, nazwa_kursu, opis_kursu, ocena, ilość_użytkowników, id_prowadzący, id_twórca) VALUES (2, 'Algebra liniowa', 'Kurs dla średnozaawansowanych z algebry liniowej zawiera inpertretacje i sposoby rozwiązań wybranych problemów w tej dziedzinie', 4.7, 2, 2, 1);
INSERT INTO "Kurs" (id_kurs, nazwa_kursu, opis_kursu, ocena, ilość_użytkowników, id_prowadzący, id_twórca) VALUES (3, 'Bazy danych', 'Kurs obsługi baz danych przy użyciu języka sql', 4.8, 1, 2, 2);

INSERT INTO "Kategorie_kursów" (id_kategorie_kursów, nazwa_kategorii) VALUES (1, 'Matematyka');
INSERT INTO "Kategorie_kursów" (id_kategorie_kursów, nazwa_kategorii) VALUES (2, 'Informatyka');
INSERT INTO "Kategorie_kursów" (id_kategorie_kursów, nazwa_kategorii) VALUES (3, 'Bazy danych');

INSERT INTO "Kurs-kategoria" (id_kurs, id_kategoria) VALUES (1, 1);
INSERT INTO "Kurs-kategoria" (id_kurs, id_kategoria) VALUES (2, 1);
INSERT INTO "Kurs-kategoria" (id_kurs, id_kategoria) VALUES (3, 2);
INSERT INTO "Kurs-kategoria" (id_kurs, id_kategoria) VALUES (3, 3);

INSERT INTO "Certyfikat" (id_certyfikat, nazwa_certyfikatu, opis , uzyskana_ocena, id_kurs) VALUES (1, 'Certyfikat Matematyka dykretna', 'Ten certyfikat poświadcza ukończenie kursu z matemtyki dyskretnej z wynikiem pozytyznym', 5, 1);
INSERT INTO "Certyfikat" (id_certyfikat, nazwa_certyfikatu, opis , uzyskana_ocena, id_kurs) VALUES (2, 'Certyfikat Algebra liniowa', 'Ten certyfikat poświadcza ukończenie kursu z algebry liniowej z wynikiem pozytyznym', 4, 2);

INSERT INTO "Uzyskane-certyfikaty" (id_certyfikat, id_użytkownik) VALUES (1, 2);
INSERT INTO "Uzyskane-certyfikaty" (id_certyfikat, id_użytkownik) VALUES (2, 5);

INSERT INTO "Moduł" (id_moduł, nazwa, czas_rozpoczęcia , czas_zamknięcia) VALUES (1, 'Podstawowe, pojęcia', '2020-02-03', '2020-02-10');
INSERT INTO "Moduł" (id_moduł, nazwa, czas_rozpoczęcia , czas_zamknięcia) VALUES (2, 'Systemy liczbowe', '2020-02-10', '2020-02-17');
INSERT INTO "Moduł" (id_moduł, nazwa, czas_rozpoczęcia , czas_zamknięcia) VALUES (3, 'Kombinatoryka', '2020-02-17', '2020-02-24');

INSERT INTO "Kurs-moduł" (id_kurs, id_moduł) VALUES (1, 1);
INSERT INTO "Kurs-moduł" (id_kurs, id_moduł) VALUES (1, 2);
INSERT INTO "Kurs-moduł" (id_kurs, id_moduł) VALUES (1, 3);

INSERT INTO "Lekcja" (id_lekcja, nazwa_lekcji) VALUES (1, 'Zbiory');
INSERT INTO "Lekcja" (id_lekcja, nazwa_lekcji) VALUES (2, 'Grafy');

INSERT INTO "Moduł-lekcja" (id_moduł, id_lekcja) VALUES (1, 1);
INSERT INTO "Moduł-lekcja" (id_moduł, id_lekcja) VALUES (1, 2);

INSERT INTO "Zadanie" (id_zadanie, treść_zadania, maks_punktów) VALUES (1, 'Przedstaw następujące zbiory na osi liczbowej, a następnie ...', 1);
INSERT INTO "Zadanie" (id_zadanie, treść_zadania, maks_punktów) VALUES (2, 'Oblicz iloczyn kartezjański poniższych zbiorów, a następnie ...', 1);

INSERT INTO "Lekcja-zadania" (id_lekcja, id_zadanie) VALUES (1, 1);
INSERT INTO "Lekcja-zadania" (id_lekcja, id_zadanie) VALUES (1, 2);

INSERT INTO "Zadanie" (id_zadanie, treść_zadania, maks_punktów) VALUES (3, 'Narysuj graf o pomiższzych wartościach...', 1);
INSERT INTO "Zadanie" (id_zadanie, treść_zadania, maks_punktów) VALUES (4, 'Opowiedz na pytanie o poniższym grafie...', 1);

INSERT INTO "Lekcja-zadania" (id_lekcja, id_zadanie) VALUES (2, 3);
INSERT INTO "Lekcja-zadania" (id_lekcja, id_zadanie) VALUES (2, 4);

INSERT INTO "Lekcja" (id_lekcja, nazwa_lekcji) VALUES (3, 'System dwójkowy');
INSERT INTO "Lekcja" (id_lekcja, nazwa_lekcji) VALUES (4, 'System szesnastkowy');

INSERT INTO "Moduł-lekcja" (id_moduł, id_lekcja) VALUES (2, 3);
INSERT INTO "Moduł-lekcja" (id_moduł, id_lekcja) VALUES (2, 4);

INSERT INTO "Zadanie" (id_zadanie, treść_zadania, maks_punktów) VALUES (5, 'Zamień podaną liczbe z systemu dziesiętnego na dwójkowy...', 1);
INSERT INTO "Zadanie" (id_zadanie, treść_zadania, maks_punktów) VALUES (6, 'Dodaj i pomnóż podane liczby w systemie dwójkowym...', 1);

INSERT INTO "Lekcja-zadania" (id_lekcja, id_zadanie) VALUES (3, 5);
INSERT INTO "Lekcja-zadania" (id_lekcja, id_zadanie) VALUES (3, 6);

INSERT INTO "Zadanie" (id_zadanie, treść_zadania, maks_punktów) VALUES (7, 'Zamień podaną liczbe z systemu dziesiętnego na szesnastkowy...', 1);
INSERT INTO "Zadanie" (id_zadanie, treść_zadania, maks_punktów) VALUES (8, 'Zamień podaną liczbe z systemu dwójkowego na szesnastkowy...', 2);

INSERT INTO "Lekcja-zadania" (id_lekcja, id_zadanie) VALUES (4, 7);
INSERT INTO "Lekcja-zadania" (id_lekcja, id_zadanie) VALUES (4, 8);

INSERT INTO "Lekcja" (id_lekcja, nazwa_lekcji) VALUES (5, 'Permutacje');
INSERT INTO "Lekcja" (id_lekcja, nazwa_lekcji) VALUES (6, 'Dwumian Newtona');

INSERT INTO "Moduł-lekcja" (id_moduł, id_lekcja) VALUES (3, 5);
INSERT INTO "Moduł-lekcja" (id_moduł, id_lekcja) VALUES (3, 6);

INSERT INTO "Zadanie" (id_zadanie, treść_zadania, maks_punktów) VALUES (9, 'Podaj liczbe możliwych permutacji podamnego zbioru..', 1);
INSERT INTO "Zadanie" (id_zadanie, treść_zadania, maks_punktów) VALUES (10, 'Podaj liczbe możliwych permutacji podanego zbioru pomiń powtórzenia korzystając ze wzoru..', 2);

INSERT INTO "Lekcja-zadania" (id_lekcja, id_zadanie) VALUES (5, 9);
INSERT INTO "Lekcja-zadania" (id_lekcja, id_zadanie) VALUES (5, 10);

INSERT INTO "Zadanie" (id_zadanie, treść_zadania, maks_punktów) VALUES (11, 'Oblicz podany dwumian newtona korzystając ze wzoru...' , 2);
INSERT INTO "Zadanie" (id_zadanie, treść_zadania, maks_punktów) VALUES (12, 'Oblicz ilość kombinacji zboiru korzystając z dwumianu...' , 2);

INSERT INTO "Lekcja-zadania" (id_lekcja, id_zadanie) VALUES (6, 11);
INSERT INTO "Lekcja-zadania" (id_lekcja, id_zadanie) VALUES (6, 12);

INSERT INTO "Moduł" (id_moduł, nazwa, czas_rozpoczęcia , czas_zamknięcia) VALUES (4, 'Liczby zespolone', '2020-03-02', '2020-03-09');
INSERT INTO "Moduł" (id_moduł, nazwa, czas_rozpoczęcia , czas_zamknięcia) VALUES (5, 'Macierze', '2020-03-09', '2020-03-16');

INSERT INTO "Kurs-moduł" (id_kurs, id_moduł) VALUES (2, 4);
INSERT INTO "Kurs-moduł" (id_kurs, id_moduł) VALUES (2, 5);

INSERT INTO "Lekcja" (id_lekcja, nazwa_lekcji) VALUES (7, 'Działania na liczbach zespolonych');
INSERT INTO "Lekcja" (id_lekcja, nazwa_lekcji) VALUES (8, 'Inne formy liczb zespolonych liczbach zespolonych');

INSERT INTO "Moduł-lekcja" (id_moduł, id_lekcja) VALUES (4, 7);
INSERT INTO "Moduł-lekcja" (id_moduł, id_lekcja) VALUES (4, 8);

INSERT INTO "Zadanie" (id_zadanie, treść_zadania, maks_punktów) VALUES (13, 'Uprość podaną liczbę zespoloną...' , 1);
INSERT INTO "Zadanie" (id_zadanie, treść_zadania, maks_punktów) VALUES (14, 'Dodaj podane liczby zespolone...' , 1);

INSERT INTO "Lekcja-zadania" (id_lekcja, id_zadanie) VALUES (7, 13);
INSERT INTO "Lekcja-zadania" (id_lekcja, id_zadanie) VALUES (7, 14);

INSERT INTO "Zadanie" (id_zadanie, treść_zadania, maks_punktów) VALUES (15, 'Przedstaw liczbę zespoloną w postaci trgonometrycznej...' , 2);
INSERT INTO "Zadanie" (id_zadanie, treść_zadania, maks_punktów) VALUES (16, 'Przedstaw liczby zespolone w postaci trgonometrycznej...' , 2);

INSERT INTO "Lekcja-zadania" (id_lekcja, id_zadanie) VALUES (8, 15);
INSERT INTO "Lekcja-zadania" (id_lekcja, id_zadanie) VALUES (8, 16);

INSERT INTO "Lekcja" (id_lekcja, nazwa_lekcji) VALUES (9, 'Przekształcanie macierzy');
INSERT INTO "Lekcja" (id_lekcja, nazwa_lekcji) VALUES (10, 'Działania na macierzach');

INSERT INTO "Moduł-lekcja" (id_moduł, id_lekcja) VALUES (5, 9);
INSERT INTO "Moduł-lekcja" (id_moduł, id_lekcja) VALUES (5, 10);

INSERT INTO "Zadanie" (id_zadanie, treść_zadania, maks_punktów) VALUES (17, 'Przedstaw macierz w schodkowej...' , 2);
INSERT INTO "Zadanie" (id_zadanie, treść_zadania, maks_punktów) VALUES (18, 'Przedstaw macierz odwrotną do...' , 2);

INSERT INTO "Lekcja-zadania" (id_lekcja, id_zadanie) VALUES (9, 17);
INSERT INTO "Lekcja-zadania" (id_lekcja, id_zadanie) VALUES (9, 18);

INSERT INTO "Zadanie" (id_zadanie, treść_zadania, maks_punktów) VALUES (19, 'Pomnóż przez siebie podane macierze...' , 2);
INSERT INTO "Zadanie" (id_zadanie, treść_zadania, maks_punktów) VALUES (20, 'Wyznacz macierz X z równania AXB=C ...' , 2);

INSERT INTO "Lekcja-zadania" (id_lekcja, id_zadanie) VALUES (10, 19);
INSERT INTO "Lekcja-zadania" (id_lekcja, id_zadanie) VALUES (10, 20);

INSERT INTO "Moduł" (id_moduł, nazwa, czas_rozpoczęcia , czas_zamknięcia) VALUES (6, 'Tworzenie i edycja tabel w SQL', '2020-04-06', '2020-04-13');
INSERT INTO "Moduł" (id_moduł, nazwa, czas_rozpoczęcia , czas_zamknięcia) VALUES (7, 'Wyszukiwanie danych w SQL', '2020-04-13', '2020-04-20');

INSERT INTO "Kurs-moduł" (id_kurs, id_moduł) VALUES (3, 6);
INSERT INTO "Kurs-moduł" (id_kurs, id_moduł) VALUES (3, 7);

INSERT INTO "Lekcja" (id_lekcja, nazwa_lekcji) VALUES (11, 'Tworzenie tabel SQL');
INSERT INTO "Lekcja" (id_lekcja, nazwa_lekcji) VALUES (12, 'Edycja tabel SQL');

INSERT INTO "Moduł-lekcja" (id_moduł, id_lekcja) VALUES (6, 11);
INSERT INTO "Moduł-lekcja" (id_moduł, id_lekcja) VALUES (6, 12);

INSERT INTO "Zadanie" (id_zadanie, treść_zadania, maks_punktów) VALUES (21, 'Stwórz tabelę w języku SQL zawierającą...' , 2);
INSERT INTO "Zadanie" (id_zadanie, treść_zadania, maks_punktów) VALUES (22, 'Stwórz kolejną tabelę zawierającą...' , 2);

INSERT INTO "Lekcja-zadania" (id_lekcja, id_zadanie) VALUES (11, 21);
INSERT INTO "Lekcja-zadania" (id_lekcja, id_zadanie) VALUES (11, 22);

INSERT INTO "Zadanie" (id_zadanie, treść_zadania, maks_punktów) VALUES (23, 'Dodaj to  tabeli następujące kolumny...' , 2);
INSERT INTO "Zadanie" (id_zadanie, treść_zadania, maks_punktów) VALUES (24, 'Dodaj to tabel odpowiednie klucze obce zgodnie ze schematem...' , 2);

INSERT INTO "Lekcja-zadania" (id_lekcja, id_zadanie) VALUES (12, 23);
INSERT INTO "Lekcja-zadania" (id_lekcja, id_zadanie) VALUES (12, 24);

INSERT INTO "Lekcja" (id_lekcja, nazwa_lekcji) VALUES (13, 'Podstawowe wyszukania w SQL');
INSERT INTO "Lekcja" (id_lekcja, nazwa_lekcji) VALUES (14, 'Zaawansowane wyszukania w SQL');

INSERT INTO "Moduł-lekcja" (id_moduł, id_lekcja) VALUES (7, 13);
INSERT INTO "Moduł-lekcja" (id_moduł, id_lekcja) VALUES (7, 14);

INSERT INTO "Zadanie" (id_zadanie, treść_zadania, maks_punktów) VALUES (25, 'Wyświetl wszystkie dane z tabeli...' , 2);
INSERT INTO "Zadanie" (id_zadanie, treść_zadania, maks_punktów) VALUES (26, 'Wyświetl dane dotyczące zamówień z tabeli...' , 2);

INSERT INTO "Lekcja-zadania" (id_lekcja, id_zadanie) VALUES (13, 25);
INSERT INTO "Lekcja-zadania" (id_lekcja, id_zadanie) VALUES (13, 26);

INSERT INTO "Zadanie" (id_zadanie, treść_zadania, maks_punktów) VALUES (27, 'Wyświetl dane z tabeli ograniczając wyukiwanie danymi z innej tabli używają c inner join ...' , 2);
INSERT INTO "Zadanie" (id_zadanie, treść_zadania, maks_punktów) VALUES (28, 'Wyświetl dane zadań wykonanych przez konkretną osobe używając zagnieżdżeń ...' , 2);

INSERT INTO "Lekcja-zadania" (id_lekcja, id_zadanie) VALUES (14, 27);
INSERT INTO "Lekcja-zadania" (id_lekcja, id_zadanie) VALUES (14, 28);

INSERT INTO "Powiadomienia" (id_powiadomienia, treść_powiadomienia, id_kurs, id_użytkownik) VALUES (1, 'Otwato moduł 1 w kursie Matematyka dyskretna', 1, 3);
INSERT INTO "Powiadomienia" (id_powiadomienia, treść_powiadomienia, id_kurs, id_użytkownik) VALUES (2, 'Wykonane zadania w 3 module w kursie Matematyka dyskretna zostały ocenione.', 1, 3);

INSERT INTO "Użytkownik-kurs" ("id_użytkownik-kurs", ocena, maks_punktów, zdobyte_punkty, stopień_ukończenia, id_uzytkownik, id_kurs) VALUES (1, 5, 16, 16, 100, 3, 1);
INSERT INTO "Użytkownik-kurs" ("id_użytkownik-kurs", ocena, maks_punktów, zdobyte_punkty, stopień_ukończenia, id_uzytkownik, id_kurs) VALUES (2, 5, 14, 14, 100, 3, 2);
INSERT INTO "Użytkownik-kurs" ("id_użytkownik-kurs", ocena, maks_punktów, zdobyte_punkty, stopień_ukończenia, id_uzytkownik, id_kurs) VALUES (3, 5, 16, 16, 100, 4, 1);
INSERT INTO "Użytkownik-kurs" ("id_użytkownik-kurs", ocena, maks_punktów, zdobyte_punkty, stopień_ukończenia, id_uzytkownik, id_kurs) VALUES (4, 4, 14, 9, 75, 4, 2);
INSERT INTO "Użytkownik-kurs" ("id_użytkownik-kurs", ocena, maks_punktów, zdobyte_punkty, stopień_ukończenia, id_uzytkownik, id_kurs) VALUES (5, 5, 16, 14, 100, 5, 3);

INSERT INTO "Wykonane-zadania" (zdobyte_punkty, czy_wykonane, czas_wykonania, id_zadanie, "id_użytkownik-kurs") VALUES (1, 'YES', '2020/02/05',1, 1);
INSERT INTO "Wykonane-zadania" (zdobyte_punkty, czy_wykonane, czas_wykonania, id_zadanie, "id_użytkownik-kurs") VALUES (1, 'YES', '2020/02/05', 2, 1);
INSERT INTO "Wykonane-zadania" (zdobyte_punkty, czy_wykonane, czas_wykonania, id_zadanie, "id_użytkownik-kurs") VALUES (1, 'YES', '2020/02/05', 3, 1);
INSERT INTO "Wykonane-zadania" (zdobyte_punkty, czy_wykonane, czas_wykonania, id_zadanie, "id_użytkownik-kurs") VALUES (1, 'YES', '2020/02/05', 4, 1);
INSERT INTO "Wykonane-zadania" (zdobyte_punkty, czy_wykonane, czas_wykonania, id_zadanie, "id_użytkownik-kurs") VALUES (1, 'YES', '2020/02/11', 5, 1);
INSERT INTO "Wykonane-zadania" (zdobyte_punkty, czy_wykonane, czas_wykonania, id_zadanie, "id_użytkownik-kurs") VALUES (1, 'YES', '2020/02/11', 6, 1);
INSERT INTO "Wykonane-zadania" (zdobyte_punkty, czy_wykonane, czas_wykonania, id_zadanie, "id_użytkownik-kurs") VALUES (1, 'YES', '2020/02/11', 7, 1);
INSERT INTO "Wykonane-zadania" (zdobyte_punkty, czy_wykonane, czas_wykonania, id_zadanie, "id_użytkownik-kurs") VALUES (2, 'YES', '2020/02/12', 8, 1);
INSERT INTO "Wykonane-zadania" (zdobyte_punkty, czy_wykonane, czas_wykonania, id_zadanie, "id_użytkownik-kurs") VALUES (1, 'YES', '2020/02/20', 9, 1);
INSERT INTO "Wykonane-zadania" (zdobyte_punkty, czy_wykonane, czas_wykonania, id_zadanie, "id_użytkownik-kurs") VALUES (2, 'YES', '2020/02/20', 10, 1);
INSERT INTO "Wykonane-zadania" (zdobyte_punkty, czy_wykonane, czas_wykonania, id_zadanie, "id_użytkownik-kurs") VALUES (2, 'YES', '2020/02/20', 11, 1);
INSERT INTO "Wykonane-zadania" (zdobyte_punkty, czy_wykonane, czas_wykonania, id_zadanie, "id_użytkownik-kurs") VALUES (2, 'YES', '2020/02/20', 12, 1);

INSERT INTO "Wykonane-zadania" (zdobyte_punkty, czy_wykonane, czas_wykonania, id_zadanie, "id_użytkownik-kurs") VALUES (1, 'YES', '2020/02/05',1, 3);
INSERT INTO "Wykonane-zadania" (zdobyte_punkty, czy_wykonane, czas_wykonania, id_zadanie, "id_użytkownik-kurs") VALUES (1, 'YES', '2020/02/05', 2, 3);
INSERT INTO "Wykonane-zadania" (zdobyte_punkty, czy_wykonane, czas_wykonania, id_zadanie, "id_użytkownik-kurs") VALUES (1, 'YES', '2020/02/05', 3, 3);
INSERT INTO "Wykonane-zadania" (zdobyte_punkty, czy_wykonane, czas_wykonania, id_zadanie, "id_użytkownik-kurs") VALUES (1, 'YES', '2020/02/07', 4, 3);
INSERT INTO "Wykonane-zadania" (zdobyte_punkty, czy_wykonane, czas_wykonania, id_zadanie, "id_użytkownik-kurs") VALUES (1, 'YES', '2020/02/11', 5, 3);
INSERT INTO "Wykonane-zadania" (zdobyte_punkty, czy_wykonane, czas_wykonania, id_zadanie, "id_użytkownik-kurs") VALUES (1, 'YES', '2020/02/11', 6, 3);
INSERT INTO "Wykonane-zadania" (zdobyte_punkty, czy_wykonane, czas_wykonania, id_zadanie, "id_użytkownik-kurs") VALUES (1, 'YES', '2020/02/13', 7, 3);
INSERT INTO "Wykonane-zadania" (zdobyte_punkty, czy_wykonane, czas_wykonania, id_zadanie, "id_użytkownik-kurs") VALUES (2, 'YES', '2020/02/13', 8, 3);
INSERT INTO "Wykonane-zadania" (zdobyte_punkty, czy_wykonane, czas_wykonania, id_zadanie, "id_użytkownik-kurs") VALUES (1, 'YES', '2020/02/20', 9, 3);
INSERT INTO "Wykonane-zadania" (zdobyte_punkty, czy_wykonane, czas_wykonania, id_zadanie, "id_użytkownik-kurs") VALUES (2, 'YES', '2020/02/20', 10, 3);
INSERT INTO "Wykonane-zadania" (zdobyte_punkty, czy_wykonane, czas_wykonania, id_zadanie, "id_użytkownik-kurs") VALUES (2, 'YES', '2020/02/19', 11, 3);
INSERT INTO "Wykonane-zadania" (zdobyte_punkty, czy_wykonane, czas_wykonania, id_zadanie, "id_użytkownik-kurs") VALUES (2, 'YES', '2020/02/21', 12, 3);

INSERT INTO "Wykonane-zadania" (zdobyte_punkty, czy_wykonane, czas_wykonania, id_zadanie, "id_użytkownik-kurs") VALUES (1, 'YES', '2020/03/05', 13, 2);
INSERT INTO "Wykonane-zadania" (zdobyte_punkty, czy_wykonane, czas_wykonania, id_zadanie, "id_użytkownik-kurs") VALUES (1, 'YES', '2020/03/05', 14, 2);
INSERT INTO "Wykonane-zadania" (zdobyte_punkty, czy_wykonane, czas_wykonania, id_zadanie, "id_użytkownik-kurs") VALUES (2, 'YES', '2020/03/05', 15, 2);
INSERT INTO "Wykonane-zadania" (zdobyte_punkty, czy_wykonane, czas_wykonania, id_zadanie, "id_użytkownik-kurs") VALUES (2, 'YES', '2020/03/06', 16, 2);
INSERT INTO "Wykonane-zadania" (zdobyte_punkty, czy_wykonane, czas_wykonania, id_zadanie, "id_użytkownik-kurs") VALUES (2, 'YES', '2020/03/11', 17, 2);
INSERT INTO "Wykonane-zadania" (zdobyte_punkty, czy_wykonane, czas_wykonania, id_zadanie, "id_użytkownik-kurs") VALUES (2, 'YES', '2020/03/11', 18, 2);
INSERT INTO "Wykonane-zadania" (zdobyte_punkty, czy_wykonane, czas_wykonania, id_zadanie, "id_użytkownik-kurs") VALUES (2, 'YES', '2020/03/13', 19, 2);
INSERT INTO "Wykonane-zadania" (zdobyte_punkty, czy_wykonane, czas_wykonania, id_zadanie, "id_użytkownik-kurs") VALUES (2, 'YES', '2020/03/13', 20, 2);

INSERT INTO "Wykonane-zadania" (zdobyte_punkty, czy_wykonane, czas_wykonania, id_zadanie, "id_użytkownik-kurs") VALUES (1, 'YES', '2020/03/05', 13, 4);
INSERT INTO "Wykonane-zadania" (zdobyte_punkty, czy_wykonane, czas_wykonania, id_zadanie, "id_użytkownik-kurs") VALUES (1, 'YES', '2020/03/05', 14, 4);
INSERT INTO "Wykonane-zadania" (zdobyte_punkty, czy_wykonane, czas_wykonania, id_zadanie, "id_użytkownik-kurs") VALUES (2, 'YES', '2020/03/05', 15, 4);
INSERT INTO "Wykonane-zadania" (zdobyte_punkty, czy_wykonane, czas_wykonania, id_zadanie, "id_użytkownik-kurs") VALUES (2, 'YES', '2020/03/06', 16, 4);
INSERT INTO "Wykonane-zadania" (zdobyte_punkty, czy_wykonane, czas_wykonania, id_zadanie, "id_użytkownik-kurs") VALUES (1, 'YES', '2020/03/11', 17, 4);
INSERT INTO "Wykonane-zadania" (zdobyte_punkty, czy_wykonane, czas_wykonania, id_zadanie, "id_użytkownik-kurs") VALUES (0, 'NO' , NULL, 18, 2);
INSERT INTO "Wykonane-zadania" (zdobyte_punkty, czy_wykonane, czas_wykonania, id_zadanie, "id_użytkownik-kurs") VALUES (2, 'YES', '2020/03/13', 19, 4);
INSERT INTO "Wykonane-zadania" (zdobyte_punkty, czy_wykonane, czas_wykonania, id_zadanie, "id_użytkownik-kurs") VALUES (0, 'NO', NULL, 20, 4);

INSERT INTO "Wykonane-zadania" (zdobyte_punkty, czy_wykonane, czas_wykonania, id_zadanie, "id_użytkownik-kurs") VALUES (2, 'YES', '2020/04/07', 21, 5);
INSERT INTO "Wykonane-zadania" (zdobyte_punkty, czy_wykonane, czas_wykonania, id_zadanie, "id_użytkownik-kurs") VALUES (2, 'YES', '2020/04/07', 22, 5);
INSERT INTO "Wykonane-zadania" (zdobyte_punkty, czy_wykonane, czas_wykonania, id_zadanie, "id_użytkownik-kurs") VALUES (2, 'YES', '2020/04/08', 23, 5);
INSERT INTO "Wykonane-zadania" (zdobyte_punkty, czy_wykonane, czas_wykonania, id_zadanie, "id_użytkownik-kurs") VALUES (2, 'YES', '2020/04/08', 24, 5);
INSERT INTO "Wykonane-zadania" (zdobyte_punkty, czy_wykonane, czas_wykonania, id_zadanie, "id_użytkownik-kurs") VALUES (2, 'YES', '2020/04/14', 25, 5);
INSERT INTO "Wykonane-zadania" (zdobyte_punkty, czy_wykonane, czas_wykonania, id_zadanie, "id_użytkownik-kurs") VALUES (1, 'YES', '2020/04/15', 26, 5);
INSERT INTO "Wykonane-zadania" (zdobyte_punkty, czy_wykonane, czas_wykonania, id_zadanie, "id_użytkownik-kurs") VALUES (2, 'YES', '2020/04/15', 27, 5);
INSERT INTO "Wykonane-zadania" (zdobyte_punkty, czy_wykonane, czas_wykonania, id_zadanie, "id_użytkownik-kurs") VALUES (1, 'YES', '2020/04/16', 28, 5);


