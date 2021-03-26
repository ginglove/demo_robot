*** Variables ***
${url}          https://dantri.com.vn/
${Browser}      Chrome
${delay}        0
${searchtextbox}      xpath=//input[@id='js-search-input'] 
${string1}      covid
${string2}      covid-19
*** Keywords ***
lauching
    Open Browser    ${url}  ${Browser} 
    Maximize Browser Window
    Set Selenium Speed  ${delay}

searchvalue1
    input text      ${searchtextbox}        ${string1}
    submit form

searchvalue2
    input text      ${searchtextbox}    ${string2}
    submit form

