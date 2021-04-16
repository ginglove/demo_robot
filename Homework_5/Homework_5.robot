*** Settings ***
Library     SeleniumLibrary
Library     Collections

Resource       ../Variable/Variable.robot

*** Variables ***
 
*** Keywords ***
Search
    [Arguments]        ${keyword}  
    ${tbl_search}    Get WebElement     //*[@title='Tìm kiếm']
    ${btn_googlesearch}     Get WebElement    //*[@role="listbox"]/parent::div/div[2]/center/input[1]
    Input Text          ${tbl_search}         ${keyword}  
    Wait Until Page Contains Element     ${btn_googlesearch}     20s
    BuiltIn.Sleep    1
    Click Element      ${btn_googlesearch}

*** Test Cases ***
HomeWork Session5

    Open Browser    ${Google_url}    ${browser}
    Maximize Browser Window
    # ${tbl_search}    Get WebElement     //*[@title='Tìm kiếm']
    # ${btn_googlesearch}     Get WebElement    //*[@role="listbox"]/parent::div/div[2]/center/input[1]
    # Wait Until Page Contains Element     ${tbl_search}     20s
    Sleep    1
    FOR    ${robot}      IN    @{Keywords} 
        Search    ${robot}
         go back
    END
    Close Browser
                  