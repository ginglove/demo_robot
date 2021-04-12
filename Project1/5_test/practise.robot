*** Settings ***
Library          SeleniumLibrary
Resource         ../0_resource/HomePage.robot
Resource         ../0_resource/LoginPage.robot
Resource         ../0_resource/Checkout.robot
Resource         ../0_resource/common.robot
Resource         ../0_resource/Variable.robot
Resource         ../0_resource/wishlist.robot
Documentation    E2E Guest Checkout/ Customer checkout

Test Setup       launching
Test Teardown    close all browsers

*** Test Cases ***
Verify check out with guest
    Add to Cart
    Verify Successful Add to Cart
    Verify location link
    Click Proceed to Checkout button
    Fill shipping infomation 
    Perform Payment steps from 3rd party
    Sleep                                   12s
    Verify thank you page guest
# Verify check out with customer
#     Go on Login Page
#     Login with Valid Credential
#     Verify Successful Login
#     Click on logo
#     Add to wishlist 
#     Product Quantity Number
#     Verify Update Wish List Successfully
#     Minus product quantity
#     Add wishlist to cart
#     Select minicart
#     Click Proceed to Checkout button
#     Fill shipping infomation
#     Perform Payment steps from 3rd party
#     Verify thank you page customer



