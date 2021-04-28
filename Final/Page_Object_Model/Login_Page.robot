***Keywords***
Click Login
    Wait Until Page Contains Element    ${Xpath_Login_Link}   30s
    Sleep    1
    Click Element       ${Xpath_Login_Link}

Log in with valid user
    Wait Until Page Contains Element    ${Xpath_Email}    30s
    Input Text      ${Xpath_Email}    Duyenlt@smartosc.com
    Input Password      ${Xpath_Pass}     abc@12345
    Click Button    ${Xpath_btn_Login}
Confirm Login successfully
    Wait Until Page Contains     Sign Out     30s 