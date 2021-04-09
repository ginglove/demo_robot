*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${txt_email}       xpath://input[@id='email']
${txt_password}    xpath:(//input[@id='pass'])[1]
${btn_login}       xpath:(//form[@class='form form-login']//button[@type='submit'])[1]
${email}           hienqn@smartosc.com
${password}        Perfect12#
*** Keywords ***
Login with Valid Credential
    Input Text      ${txt_email}       ${email}
    Input Text      ${txt_password}    ${password} 
    Click Button    ${btn_login}