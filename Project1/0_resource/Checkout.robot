*** Settings ***
Library    Selenium2Library
*** Variables ***
${checkoutPage_url}    https://uat.b2s.co.th/checkout/cart/

*** Keywords ***
Verify Successful Redirect to Checkout page
    Wait Until Location Is    ${checkoutPage_url}