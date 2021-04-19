*** Keywords ***
[Kw] - lauching
    Open Browser    ${url}  ${Browser} 
    Click element           xpath=//div[@class='shopee-popup__close-btn']
    Click element   xpath=//UL[@class='navbar__links']//a[@rel='noopener noreferrer']//following-sibling::a[2]
    Maximize Browser Window
    Set Selenium Speed  ${delay}


[Kw] Search list keywords 
    [Arguments]     @{list}  
    ${arg}  Get from list    ${list}     1 
    input text      ${searchtextbox}    ${arg}
    