*** Settings ***
Documentation    Dodawanie produktu do koszyka oraz sprawdzenie czy ilosc produktow w koszyku sie zgadza
Library          SeleniumLibrary
Setup            Prepare Env
Resource         Keywords.robot


*** Test Cases ***

Prepare Env
        Set Selenium Speed                     
Otworz sklep internetowy
        Open Browser                            
        Maximize Browser Window
Zaakceptuj wyskakujace okienki plikow cookie
        Click Element                           
Wejdz w zakladke na codzien
        Mouse Over                              
Wybierz koszulki
        Click Link                             
Posortuj po cenie od najwyzszej do najnizszej
        Click Button                            
        Click Element                           
Dodaj do koszyka najtanszy produkt z pierwszym dostepnym rozmiarem
        Click Element                         
        Click Element                         
        Click Button                         
        Go Back
        Go Back
Dodaj do koszyka najdrozszy produkt z ostatnim dostepnym rozmiarem
        Click Element                          
        Click Element                          
        Click Button                           

Sprawdz czy ilosc produktow w koszyku sie zgadza
        Element Text Should Be                  

Zamknij przegladarke
        Close Browser
