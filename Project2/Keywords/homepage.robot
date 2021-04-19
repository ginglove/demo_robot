
*** Keywords ***
Access website 
    [Arguments]     ${url}
    Open Browser                 ${url}      ${Browser} 
    Maximize Browser Window
    Set Selenium Speed           ${delay}
    Set Browser Implicit Wait    10s

search for keyword
    [Arguments]     ${searchtextbox}   ${txt_search}
    input text      ${searchtextbox}      ${txt_search}        
    submit form

