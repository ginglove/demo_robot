***Settings***
Resource    ../PageObjects/CartPage.robot

*** Keywords ***
Proceed to Checkout
    Wait Until Location Contains    ${cartPg_url}
    Click Button   ${cartPg_processToCheckout}
 
