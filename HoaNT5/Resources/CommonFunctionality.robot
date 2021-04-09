*** Variables ***
${url}   https://uat.b2s.co.th/
${delay}    0
*** Keywords ***
Start Testcase
    Open Browser    ${url}    chrome
    Maximize Browser Window
    Set Selenium Speed  ${delay}
    Set Browser Implicit Wait   15s

End Testcase
    Close Browser
