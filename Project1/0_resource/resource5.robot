*** Variables ***
${url}              https://kenh14.vn
${Browser}          Chrome
${delay}            0


*** Keywords ***
lauching
    Open Browser    ${url}  ${Browser} 
    Maximize Browser Window
    Set Selenium Speed  ${delay}