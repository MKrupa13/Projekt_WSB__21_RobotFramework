*** Settings ***
Documentation    Dodawanie produktu do koszyka oraz sprawdzenie czy ilosc produktow w koszyku sie zgadza
Library          SeleniumLibrary
Setup            Prepare Env
Resource                                Keywords.robot

*** Test Cases ***
Dodawanie produktu do koszyka oraz sprawdzenie czy ilosc produktow w koszyku sie zgadza
        Otworz sklep internetowy
        Zaakceptuj wyskakujace okienki plikow cookie
        Wejdz w zakladke na codzien
        Wybierz koszulki
        Posortuj po cenie od najwyzszej do najnizszej
        Dodaj do koszyka najtanszy produkt z pierwszym dostepnym rozmiarem
        Dodaj do koszyka najdrozszy produkt z ostatnim dostepnym rozmiarem
        Sprawdz czy ilosc produktow w koszyku sie zgadza
        Zamknij przegladarke
