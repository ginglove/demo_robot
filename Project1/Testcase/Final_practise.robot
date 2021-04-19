*** Settings ***
Library          SeleniumLibrary
Resource         ../keywords/Pageobject/HomePage.robot
Resource         ../keywords/Pageobject/LoginPage.robot
Resource         ../keywords/Pageobject/Checkout.robot
Resource         ../keywords/Pageobject/Common.robot
Resource         ../resource/Element_final.robot
Resource         ../keywords/Pageobject/Wishlist.robot
Documentation    E2E Guest Checkout/ Customer checkout

Test Setup       launching
Test Teardown    close all browsers

*** Test Cases ***
TC1:Verify check out with guest
    
    Add to Cart
    Verify Successful Add to Cart
    Verify location link
    Click Proceed to Checkout button
    Fill shipping infomation 
    Perform Payment steps from 3rd party
    Verify thank you page guest
TC2:Verify check out with customer
    
    Go on Login Page
    Login with Valid Credential
    Verify Successful Login
    Click on logo
    Add to wishlist 
    Product Quantity Number
    Verify Update Wish List Successfully
    Minus product quantity
    Add wishlist to cart
    Select minicart
    Click Proceed to Checkout button
    Fill shipping infomation
    Perform Payment steps from 3rd party
    Verify thank you page customer



