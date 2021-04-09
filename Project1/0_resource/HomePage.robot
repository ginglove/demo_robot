
*** Variables ***
${label_login}                       //a[contains(text(),'Login or Sign Up')]
${label_account}                     //li[@class='my-account-link']
#${btn_addToCart_1st}                (//button[@class='action tocart primary'])[22]
${btn_miniCart}                      //a[@class='action showcart']
${btn_viewCart}                      //a[@class='actions viewcart']
${popup_addToCart_result}            //div[@id='mb-ajaxsuite-popup-wrapper']
${strong_result}                     //div[contains(@class,'mb-login-popup-title')]/strong
${home_closeAddToCartResultPopup}    //a[@id='mb-ajaxsuite-close']
${btn_addtowishlist}                 (//a[@class='action btn-towishlist'])[8]
${popup_addtowishlist}               //DIV[@id='mb-ajaxsuite-popup-wrapper']
${btn_viewwishlist}                  //button[@id='ajaxwishlist']
${logolink}                         //a[@href='https://uat.b2s.co.th/'][1]
*** Keywords ***
Go on Login Page
    Click Element    ${label_account} 

Verify Successful Login
    Wait Until Element Is Visible    ${label_logout} 

Add to Cart
    Set Focus To Element    ${btn_addToCart_1st}    
    Click Button            ${btn_addToCart_1st}    

Verify Successful Add to Cart
    Wait Until Element Is Visible    ${popup_addToCart_result}            
    Element Text Should Be           ${strong_result}                     SUCCESS
    #Wait Until Element Is Not Visible    ${popup_addToCart_result}    15
    Click Element                    ${home_closeAddToCartResultPopup}
    Click Element                    ${btn_miniCart} 
    Click Element                    ${btn_viewCart} 

Click on logo
    Click Element    ${logolink}    
Add to wishlist
    wait until element is visible    ${btn_addtowishlist}   15s
    click element                    ${btn_addtowishlist}      
    wait until element is visible    ${popup_addtowishlist}    
    click element                    ${btn_viewwishlist} 
    Wait For Condition	return jQuery.active == 0      
    


