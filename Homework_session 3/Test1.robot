*** Settings ***
Library            SeleniumLibrary
Resource           ./Variable/Variable1.robot


*** Test Cases ***
Demo Testcase
     Open browser     ${url}     ${browser}
     Maximize Browser Window
