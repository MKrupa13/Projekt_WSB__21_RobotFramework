*** Settings ***
Resource Variables.robot

*** Keywords ***
Prepare Env
        Set Selenium Speed                      0.2
Otworz sklep internetowy
        Open Browser                            ${URL}        ${BROWSER}
        Maximize Browser Window
Zaakceptuj wyskakujace okienki plikow cookie
        Click Element                           ${COOKIE}
Wejdz w zakladke na codzien
        Mouse Over                              ${MOUSE_MOVE}
Wybierz koszulki
        Click Link                              ${CATEGORY}
Posortuj po cenie od najwyzszej do najnizszej
        Click Button                            ${SORT_BY}
        Click Element                           ${SORTY_BY_PRICE_LOW_TO_HIGH}
Dodaj do koszyka najtanszy produkt z pierwszym dostepnym rozmiarem
        Click Element                          ${FIRST_PRODUCT}
        Click Element                          ${FIRST_SIZE}
        Click Button                           ${ADD_TO_CART}
        Go Back
        Go Back
Dodaj do koszyka najdrozszy produkt z ostatnim dostepnym rozmiarem
        Click Element                          ${LAST_PRODUCT}
        Click Element                          ${LAST_SIZE}
        Click Button                           ${ADD_TO_CART}

Sprawdz czy ilosc produktow w koszyku sie zgadza
        Element Text Should Be                  ${CART_ITEMS_QUANTITY}          ${QUANTITY}

Zamknij przegladarke
        Close Browser
