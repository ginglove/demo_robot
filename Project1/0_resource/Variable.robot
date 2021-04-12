*** Variables ***
${url}                                  https://uat.b2s.co.th/
${Browser}                              Chrome
${delay}                                0
${label_login}                          //a[contains(text(),'Login or Sign Up')]
${label_logout}                         //a[contains(text(),'Sign Out')]
${btn_addToCart_1st}                    (//BUTTON[@type='submit'])[9]
${btn_miniCart}                         //a[@class='action showcart']
${btn_viewCart}                         //a[@class='actions viewcart']
${popup_addToCart_result}               //div[@id='mb-ajaxsuite-popup-wrapper']
${strong_result}                        //div[contains(@class,'mb-login-popup-title')]/strong
${label_checkout}                       //button[@data-role='proceed-to-checkout']               
${checkoutPage_url}                     https://uat.b2s.co.th/checkout/cart/
${guest_email}                          (//input[@name='username'])[1]
${firstname}                            //INPUT[@name='firstname'][1]
${lastname}                             //INPUT[@name='lastname'][1]
${address}                              //input[@name='street[0]'][1]
${city}                                 //input[@name='city'][1]
${country}                              //select[@name='country_id'][1]
${region}                               //input[@name='region'][1]
${telephone}                            //INPUT[@name='telephone'][1]
${postcode}                             //input[@name='postcode'][1]
${paybycredit}                          //INPUT[@value='p2c2p_cc']
${btn_placeorder}                       (//BUTTON[@class='action primary checkout'])[4]
${cardno}                               //INPUT[@id='credit_card_number']
${cardname}                             //INPUT[@id='credit_card_holder_name'] 
${exp_month}                            //SELECT[@id='credit_card_expiry_month']
${exp_year}                             //SELECT[@id='credit_card_expiry_year'] 
${cvv}                                  //INPUT[@id='credit_card_cvv']
${btn_submit}                           //INPUT[@id='btnCCSubmit']
${onePageSuccess_orderNumber}           //span[@class='order-number']
${rdBtn_shippingAddressGroupName}       shipping_address_choice
${rdBtn_shippingAddressValue}           billing                                                  
${rdBtn_paymentgroupname}               payment[method]                                          
${rdBtn_paymentvalue}                   p2c2p_cc
${onePgSuccess_orderNumber_guest}       xpath://span[@class='order-number']
${onePgSuccess_orderNumber_customer}    xpath://a[@class='order-number']/strong     
${btn_plus}             //button[@class='btn-plus'][1]
${btn_minus}            //button[@class='btn-minus'][1]            
${update_wishlist}      //button[@class='action update']
${btn_addalltocart}     //button[@class='action tocart']
${btn_minicart1}        //A[contains(@class,'action showcart')]
${wishList_quantity}    //input[@class='input-text qty']
${btn_viewcart}         //a[@class='actions viewcart']             
${btn_addtowishlist}                 (//a[@class='action btn-towishlist'])[8]
${popup_addtowishlist}               //DIV[@id='mb-ajaxsuite-popup-wrapper']
${btn_viewwishlist}                  //button[@id='ajaxwishlist']
${logolink}                          //a[@href='https://uat.b2s.co.th/'][1]