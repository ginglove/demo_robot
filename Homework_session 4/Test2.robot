*** Settings ***
Library     SeleniumLibrary
Resource     Variable.robot
Resource     Keywork.robot
*** Keywords *** ***
Search SmartOSC
     Open Browser     ${url}     ${browser}
     Maximize Browser Window
     Input Text    ${textbox}    ${string1}
     Sleep     2s
     Wait Until Element Is Enabled    ${searchbutton}
     Click Element    ${searchbutton}

Search SmartOSC Fintech
     [Arguments]     ${string1}
     Open Browser     ${url}     ${browser}
     Maximize Browser Window
     Input Text    ${textbox}    ${string1}
     Wait Until Element Is Enabled    ${searchbutton}
     Click Element    ${searchbutton}

*** Test Cases ***
Testcase 1 Search SmartOSC
     Open Browser     ${url}     ${browser}
     Maximize Browser Window
     Input Text    ${textbox}    ${string1}
     Wait Until Element Is Enabled    ${searchbutton}
     Click Element    ${searchbutton}

Testcase 2 Search SmartOSC and SmartOSC Fintech

     Open Browser     ${url}     ${browser}
     Maximize Browser Window
     Input Text    ${textbox}    ${string1}
     Wait Until Element Is Enabled    ${searchbutton}
     Click Element    ${searchbutton}
     Sleep    2s
     Go Back
     Wait Until Page Contains Element    ${textbox}
     Input Text    ${textbox}    ${string2}
     Wait Until Element Is Enabled    ${searchbutton}
     Click Element     ${searchbutton}
    
Testcase 3
     Run Keyword IF    '${string1}' != 'SmartOSC'   Search SmartOSC     
     ...          ELSE      Search SmartOSC Fintech        test
