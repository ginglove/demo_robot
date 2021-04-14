*** Settings ***
Library           SeleniumLibrary

*** Settings ***
Resource       Variable/Variable.robot


*** Test Cases ***
Demo Test
//1.1 Search keyword "SmartOSC" in https://google.com.vn
    Open Browser    ${Google_url}    ${browser}
    Maximize Browser Window
    Wait Until Page Contains Element     //*[@title='Tìm kiếm']     20s
    Input Text     //*[@title='Tìm kiếm']     SmartOSC
    Wait Until Page Contains Element     //*[@role="listbox"]/parent::div/div[2]/center/input[1]     20s
    BuiltIn.Sleep    1
    Click Element      //*[@role="listbox"]/parent::div/div[2]/center/input[1]


    //Close Browser
 