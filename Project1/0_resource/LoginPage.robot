*** Settings ***
Library    Selenium2Library

*** Variables ***
${txt_email}    xpath://input[@id='email']
${txt_password}    xpath:(//input[@id='pass'])[1]
${btn_login}    xpath:(//form[@class='form form-login']//button[@type='submit'])[1]
${email}    test@gmail.com
${password}    123456
*** Keywords ***
Login with Valid Credential
    Input Text   ${txt_email}    ${email}
    Input Text      ${txt_password}    ${password} 
    Click Button    ${btn_login}