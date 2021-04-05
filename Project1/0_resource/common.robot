

*** Variables ***
${url}          https://uat.b2s.co.th/
${Browser}      Chrome
${delay}        0
*** Keywords ***
launching
    Open Browser    ${url}  ${Browser} 
    Maximize Browser Window
    Set Selenium Speed  ${delay}

