*** Settings ***
Library         SeleniumLibrary
Resource        ../0_resource/resource.robot
 

*** Test Cases ***
Demo Test by Hien

    Open Browser    ${url}  ${Browser} 
    Click element           xpath=//div[@class='shopee-popup__close-btn']
    Click element           xpath=//UL[@class='navbar__links']//a[@rel='noopener noreferrer']//following-sibling::a[2]
    Maximize Browser Window
    Set Selenium Speed  ${delay}

    Close Browser

***Keywords***
    [KW]-lauching
