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
