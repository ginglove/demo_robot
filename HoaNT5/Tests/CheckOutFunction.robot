*** Settings ***
Library    Selenium2Library
# Library    Library DebugLibrary
Resource    ../Resources/UserDefinedKeywords/Home.robot
Resource    ../Resources/UserDefinedKeywords/Login.robot
Resource    ../Resources/UserDefinedKeywords/Cart.robot
Resource    ../Resources/UserDefinedKeywords/OneStepCheckout.robot
Resource    ../Resources/UserDefinedKeywords/PayerAuthentication.robot
Resource    ../Resources/UserDefinedKeywords/Payment.robot
Resource    ../Resources/UserDefinedKeywords/OnePageSuccess.robot
Resource    ../Resources/UserDefinedKeywords/WishList.robot
Resource    ../Resources/CommonFunctionality.robot

Test Setup    CommonFunctionality.Start Testcase
Test Teardown    CommonFunctionality.End Testcase
*** Test Cases ***
Verify check out with guest
    Select EN Language
    Add to Cart
    Verify Successful Add to Cart
    Go to Cart
    Proceed to Checkout
    Fill Shipping Address
    Fill Payment Information
    Do Payment 
    Proceed Payment
    Verify Payment Successfully For Guest 

Verify check out with customer
    Select EN Language
    Go on Login Page
    Login with Valid Credential
    Verify Successful Login
    Add to Wish List
    Verify Successful Add to Wish List
    Decrease Product Quantity Number
    Verify Decrease Product Quantity Number Successfully
    Increase Product Quantity Number
    Verify Increase Product Quantity Number Successfully
    Add All to Cart
    Verify Add All to Cart Successfully
    Go to Cart
    Proceed to Checkout
    Fill Shipping Address
    Fill Payment Information
    Do Payment 
    Proceed Payment
    Verify Payment Successfully For Customer


