*** Settings ***
Library                 SeleniumLibrary 
Library                 Collections
Resource                ../0_resource/resource2.robot
Documentation           Use [Arguments] to define input value with keyword
Test Setup              lauching
Test Teardown           close all browsers

*** Variables ***
  
*** Test Cases ***
1. Create list keyword
    @{list}     Create list     SmartOSC    SmartOSC Fintech     Covid       Covid-19     
    
    
2. Find Element using Get WebElement and iteraction with element
    Go to           ${url}
    ${txt_search}    Get WebElement     //input[@title='Tìm kiếm']
    Input text    ${txt_search}     robot
    Sleep   4s

3 . Search list keyword in https://google.com.vn
    @{list}     Create list     SmartOSC    SmartOSC Fintech     Covid       Covid-19
    [Kw] Search list keywords       @{list}
        
4. Search list keyword using for conditions
     @{list}     Create list     SmartOSC    SmartOSC Fintech     Covid       Covid-19
   FOR         ${list}     IN    @{list}
   input text   ${searchtextbox}   ${list}
   submit form
   END


*** Keywords ***
[Kw] Search list keywords 
    [Arguments]     @{list}  
    ${arg}   Get from list    ${list}     1 
    input text      ${searchtextbox}    ${arg}
    submit form
lauching
    Open Browser    ${url}  ${Browser} 
    Maximize Browser Window
    Set Selenium Speed  ${delay}


