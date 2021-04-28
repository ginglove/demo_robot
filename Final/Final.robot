*** Settings ***
Library     SeleniumLibrary
Library     Collections
Resource      ./Variable.robot
Resource       ./Page_Object_Model/Login_Page.robot
Resource       ./Page_Object_Model/Home_Page.robot
Resource       ./Page_Object_Model/Wishlist_Page.robot
Resource       ./Page_Object_Model/Shipping_Info.robot
Resource       ./Page_Object_Model/Thanks_you_Page.robot
Resource       ./Page_Object_Model/Cart_Page.robot

*** Variables ***

*** Keywords ***

*** Test Cases ***
Guest Checkout
    [Teardown]    Close Browser
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Sleep    1
    Add items to Cart from Homepage
    Go to Cart by click Mini Cart icon
    Click View Cart button
    Confirm open Cart Page successfully
    Click Proceed to Checkout button From Cart
    Input Shipping Info(User have not login)
    Select Payment Method  
    Click Place Order
    Confirm Proceed to Thank you page

Customer Checkout
     [Teardown]    Close Browser
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Sleep    1
    Click Login
    Log in with valid user
    Confirm Login successfully
    Click on Logo in Home page   
    Add items to Wishlist from Homepage
    Click Wishlist icon
    Confirm Open Wishlist Page successfully
    Increase product quantity number
    Decrease product quantity number
    Click Update Wishlist button
    Click Add all to Cart button
    Go to Cart by click Mini Cart icon
    Click Proceed to Checkout button
    Input Shipping Info(User logged-in)
    Select Payment Method
    Click Place Order
    Confirm Proceed to Thank you page	

