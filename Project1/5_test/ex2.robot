*** Settings ***
Library         SeleniumLibrary
Resource        ../0_resource/resource2.robot
Documentation   baitap2

*** Test Cases ***
Demo Test by Hien
    [Documentation]     "1.1 Search keyword ""SmartOSC"" in https://google.com.vn 2 Search keyword ""SmartOSC"" and go back and Search keyword ""SmartOSC Fintech""3. Define If condition ( If SmartOSC ==> Search SmartOSC , else search ""SmartOSC Fintech"""
    lauching
        
Testcase search case
    
    input text  xpath=//input[@class='gLFyf gsfi']  "SmartOSC"
    #click element   xpath=//div[@class='tfB0Bf']//input[@class='gNO89b'][1]
    submit form
    go back 
    input text  xpath=//input[@class='gLFyf gsfi'] "SmartOSC Fintech"
    submit form
    Close Browser

*** Keywords ***
lauching
    Open Browser    ${url}  ${Browser} 
    Maximize Browser Window
    Set Selenium Speed  ${delay}