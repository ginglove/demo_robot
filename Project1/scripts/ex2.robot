*** Settings ***
Library         SeleniumLibrary
Resource        ../0_resource/resource2.robot
Documentation   baitap2

*** Variables ***
${keywords}         shopee


*** Test Cases ***
# Testcase search for text
#     [Documentation]     "1.1 Search keyword ""SmartOSC"" in https://google.com.vn 2 Search keyword ""SmartOSC"" and go back and Search keyword ""SmartOSC Fintech"
#     lauching
#     input text    ${searchtextbox}    "SmartOSC"
#     #thu click search button khong ok => click element   xpath=//div[@class='tfB0Bf']//input[@class='gNO89b'][1]
#     submit form
#     go back 
#     input text    ${searchtextbox}    "SmartOSC Fintech"
#     submit form
#     Close Browser

Testcase if else
    [Documentation]  3. Define If condition ( If SmartOSC ==> Search SmartOSC , else search ""SmartOSC Fintech"""
    lauching
    run keyword IF      '${keywords}' == 'SmartOSC'         searchsmartosc
    ...     ELSE        searchfintech
    Close Browser

*** Keywords ***
lauching
    Open Browser    ${url}  ${Browser} 
    Maximize Browser Window
    Set Selenium Speed  ${delay}

searchsmartosc
    input text      ${searchtextbox}        SmartOSC
    submit form

searchfintech
    input text      ${searchtextbox}    SmartOSC Fintech
    submit form