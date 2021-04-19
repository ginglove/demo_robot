*** Variables ***
${url}              https://www.selenium.dev/
${Browser}          Chrome
${delay}            0
${searchtextbox}      //input[@title='Tìm kiếm']

*** Keywords ***
lauching
    Open Browser    ${url}  ${Browser} 
    Maximize Browser Window
    Set Selenium Speed  ${delay}