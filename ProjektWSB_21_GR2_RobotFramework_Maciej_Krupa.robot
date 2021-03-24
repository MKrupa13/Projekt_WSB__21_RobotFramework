*** Settings ***
Documentation    Dodawanie produktu do koszyka oraz sprawdzenie czy ilosc produktow w koszyku sie zgadza
Library          SeleniumLibrary
Setup            Prepare Env

*** Variables ***
${BROWSER}                              chrome
${URL}                                  https://www.mantoshop.pl
${COOKIE}                               id:ckdsclmrshtdwn_v2
${MOUSE_MOVE}                           //a[@title="NA CO DZIEŃ"]
${CATEGORY}                             //a[@href="/pol_m_NA-CO-DZIEN_KOSZULKI-MANTO-159.html"]
${SORT_BY}                              id:s_setting_0
${SORTY_BY_PRICE_LOW_TO_HIGH}           //a[@data-index="2"]
${FIRST_PRODUCT}                        //div[@id="search"]/div[1]
${FIRST_SIZE}                           //div[@id="projector_sizes_cont"]//a[1]
${ADD_TO_CART}                          id:projector_button_basket
${LAST_PRODUCT}                         //div[@id="search"]/div[@class="product_wrapper col-md-4 col-xs-6"][last()]
${LAST_SIZE}                            //div[@id="projector_sizes_cont"]//a[last()]
${CART_ITEMS_QUANTITY}                  //div[@id="menu_basket"]/a/span[@class="basket_count hidden-tablet"]
${QUANTITY}                             (2)
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
