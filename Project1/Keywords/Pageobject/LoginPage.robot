*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Keywords ***
Login with Valid Credential
    Input Text      ${txt_email}       ${email}
    Input password      ${txt_password}    ${password} 
    Click Button    ${btn_login}