***Settings***
Resource    ../PageObjects/LoginPage.robot
Resource    ../DataTest/LoginPage.robot
*** Keywords ***
Login with Valid Credential
    Input Text   ${loginPg_email}    ${email}
    Input Text      ${loginPg_password}    ${password} 
    Click Button    ${loginPg_btnLogin}