*** variables ***

${url}             https://uat.b2s.co.th/
${txt_email}       xpath://input[@id='email']
${txt_password}    xpath:(//input[@id='pass'])[1]
${btn_login}       xpath:(//form[@class='form form-login']//button[@type='submit'])[1]

${home_closeaddtocartresultpopup}       //a[@id='mb-ajaxsuite-close']
${label_account}                        //li[@class='my-account-link']
${label_login}                          //a[contains(text(),'login or sign up')]
${label_logout}                         //a[contains(text(),'sign out')]
${btn_addtocart_1st}                    (//button[@type='submit'])[9]
${btn_minicart}                         //a[@class='action showcart']
${btn_viewcart}                         //a[@class='actions viewcart']
${popup_addtocart_result}               //div[@id='mb-ajaxsuite-popup-wrapper']
${strong_result}                        //div[contains(@class,'mb-login-popup-title')]/strong
${label_checkout}                       //button[@data-role='proceed-to-checkout']               


${checkoutpage_url}                     https://uat.b2s.co.th/checkout/cart/
${guest_email}                          (//input[@name='username'])[1]
${firstname}                            //input[@name='firstname'][1]
${lastname}                             //input[@name='lastname'][1]
${address}                              //input[@name='street[0]'][1]
${city}                                 //input[@name='city'][1]
${country}                              //select[@name='country_id'][1]
${region}                               //input[@name='region'][1]
${telephone}                            //input[@name='telephone'][1]
${postcode}                             //input[@name='postcode'][1]
${paybycredit}                          //input[@value='p2c2p_cc']
${btn_placeorder}                       (//button[@class='action primary checkout'])[4]
${cardno}                               //input[@id='credit_card_number']
${cardname}                             //input[@id='credit_card_holder_name'] 
${exp_month}                            //select[@id='credit_card_expiry_month']
${exp_year}                             //select[@id='credit_card_expiry_year'] 
${cvv}                                  //input[@id='credit_card_cvv']
${btn_submit}                           //input[@id='btnccsubmit']
${onepagesuccess_ordernumber}           //span[@class='order-number']
${rdbtn_shippingaddressgroupname}       shipping_address_choice
${rdbtn_shippingaddressvalue}           billing                                                  
${rdbtn_paymentgroupname}               payment[method]                                          
${rdbtn_paymentvalue}                   p2c2p_cc
${onepgsuccess_ordernumber_guest}       xpath://span[@class='order-number']
${onepgsuccess_ordernumber_customer}    xpath://a[@class='order-number']/strong                  

${btn_plus}                             //button[@class='btn-plus'][1]
${btn_minus}                            //button[@class='btn-minus'][1]                          
${update_wishlist}                      //button[@class='action update']
${btn_addalltocart}                     //button[@class='action tocart']
${btn_minicart1}                        //a[contains(@class,'action showcart')]
${wishlist_quantity}                    //input[@class='input-text qty']
${btn_viewcart}                         //a[@class='actions viewcart']                           
${btn_addtowishlist}                    (//a[@class='action btn-towishlist'])[8]
${popup_addtowishlist}                  //div[@id='mb-ajaxsuite-popup-wrapper']
${btn_viewwishlist}                     //button[@id='ajaxwishlist']
${logolink}                             //a[@href='https://uat.b2s.co.th/'][1]