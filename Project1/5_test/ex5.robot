*** Settings ***
Library                 SeleniumLibrary 
Library                 Collections
Resource                ../0_resource/resource3.robot
Documentation           Use [Arguments] to define input value with keyword
Test Setup              lauching
Test Teardown           close all browsers

*** Variables ***

*** Test Cases ***
Use [Arguments] to define input value with keyword
     [Documentation]    1. Create list keywords : Iphone 12 , Apple , Covid, Covid-19. Find Element using Get WebElement and iteraction with element . Search list keyword  in https://dantri.com.vn"
    @{list}         create list    Iphone 12   Apple   Covid   Covid-19
    Arguments from list     @{list}

*** Keywords ***
Arguments from list 
    [Arguments]     @{list} 

    ${arg}      Get from list       ${list}     0
    input text      ${searchtextbox}    ${arg}
    submit form
    sleep   2s 
    ${arg}      Get from list       ${list}     2
    input text      ${searchtextbox}    ${arg}
    submit form
    ${arg}      Get from list   ${list}     1
    input text      ${searchtextbox}    ${arg}
    submit form
    ${arg}      Get from list   ${list}     3
    input text      ${searchtextbox}    ${arg}
    submit form