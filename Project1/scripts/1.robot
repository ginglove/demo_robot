*** Settings ***
Library         SeleniumLibrary
Resource        ../0_resource/resource.robot
Documentation   baitap1

*** Test Cases ***
Demo Test by Hien
    [Documentation]     baitap1voishopee
    lauching
        
Testcase log in
    Click element       ${btn_openlogin}
    input text  xpath=//input[@type='text']     abc 
    input text  xpath=//input[@type='password']     123
    Click element        ${btn_login}
    Close Browser

*** Keywords ***
lauching
    Open Browser    ${url}  ${Browser} 
    Click element           xpath=//div[@class='shopee-popup__close-btn']
    Maximize Browser Window
    Set Selenium Speed  ${delay}
