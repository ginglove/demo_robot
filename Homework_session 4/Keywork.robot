*** Keywords ***
Search SmartOSC
     Open Browser     ${url}     ${browser}
     Maximize Browser Window
     Input Text    ${textbox}    ${string1}
     Wait Until Element Is Enabled    ${searchbutton}
     Click Element    ${searchbutton}

Search SmartOSC Fintech
     Open Browser     ${url}     ${browser}
     Maximize Browser Window
     Input Text    ${textbox}    ${string1}
     Wait Until Element Is Enabled    ${searchbutton}
     Click Element    ${searchbutton}
