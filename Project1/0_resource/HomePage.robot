
*** Variables ***
${label_login}    //a[contains(text(),'Login or Sign Up')]
${label_logout}    //a[contains(text(),'Sign Out')]
${btn_addToCart_1st}    (//button[@class='action tocart primary'])[22]
${btn_miniCart}    //a[@class='action showcart']
${btn_viewCart}    //a[@class='actions viewcart']
${popup_addToCart_result}    //div[@id='mb-ajaxsuite-popup-wrapper']
${strong_result}    //div[contains(@class,'mb-login-popup-title')]/strong

*** Keywords ***
Go on Login Page
    Click Element     ${label_login} 

Verify Successful Login
    Wait Until Element Is Visible    ${label_logout} 

Add to Cart
    Set Focus To Element    ${btn_addToCart_1st}  
    Click Button   ${btn_addToCart_1st}  

Verify Successful Add to Cart    
    Wait Until Element Is Visible    ${popup_addToCart_result}    
    #Element Text Should Be    ${strong_result}    SUCCESS
    Wait Until Element Is Not Visible    ${popup_addToCart_result}   15
    Click Link    ${btn_miniCart} 
    Click Link    ${btn_viewCart} 


