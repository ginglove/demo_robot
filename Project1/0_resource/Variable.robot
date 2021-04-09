*** Variables ***
${url}                       https://uat.b2s.co.th/
${Browser}                   Chrome
${delay}                     0
${checkoutPage_url}          https://uat.b2s.co.th/onestepcheckout/
${label_login}               //a[contains(text(),'Login or Sign Up')]
${label_logout}              //a[contains(text(),'Sign Out')]
${btn_addToCart_1st}         (//BUTTON[@type='submit'])[9]
${btn_miniCart}              //a[@class='action showcart']
${btn_viewCart}              //a[@class='actions viewcart']
${popup_addToCart_result}    //div[@id='mb-ajaxsuite-popup-wrapper']
${strong_result}             //div[contains(@class,'mb-login-popup-title')]/strong
${label_checkout}            //button[@data-role='proceed-to-checkout']            