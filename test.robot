*** Settings ***
Library           SeleniumLibrary

*** Variables ***
Variables    /Variale/variable.txt


*** Test Cases ***
Demo Test
    Open Browser    https://dantri.com.vn   Chrome
    Maximize Browser Window
    Set Selenium Speed    0
    Close Browser
