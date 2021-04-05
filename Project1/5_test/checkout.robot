*** Settings ***
Library     SeleniumLibrary
Resource    ../0_resource/HomePage.robot
Resource    ../0_resource/LoginPage.robot
Resource    ../0_resource/Checkout.robot
Resource    ../0_resource/common.robot
Documentation           test for check out process
Test Setup              launching
#Test Teardown           close all browsers

*** Test Cases ***
Verify check out with guest
    Add to Cart
    Verify Successful Add to Cart
    Verify Successful Redirect to Checkout page
    Sleep 12s

# Verify check out with customer
#     HomePage.Go on Login Page
#     LoginPage.Login with Valid Credential
#     HomePage.Verify Successful Login

