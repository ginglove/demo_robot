*** Settings ***
Library     SeleniumLibrary
Library     Collections

Resource       ../Variable/Variable.robot

*** Variables ***

 
*** Keywords ***
Search
     [Arguments]        ${keyword}   
    Input Text     //*[@title='Tìm kiếm']     ${keyword}  
    Wait Until Page Contains Element     //*[@role="listbox"]/parent::div/div[2]/center/input[1]     20s
    BuiltIn.Sleep    1
    Click Element      //*[@role="listbox"]/parent::div/div[2]/center/input[1]

*** Test Cases ***
HomeWork Session5
    Open Browser    ${Google_url}    ${browser}
    Maximize Browser Window
    Wait Until Page Contains Element     //*[@title='Tìm kiếm']     20s

    FOR    ${robot}      IN    @{Keywords} 
        Search    ${robot}
        go back
    END
    Close Browser
                  