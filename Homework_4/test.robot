*** Settings ***
Library           SeleniumLibrary
Resource       ../Variable/Variable.robot

*** Variables ***
 
*** Keywords ***
# [KW] - Validate condition
#      [Arguments]        ${txtSearch}
#     Run Keyword If       '${txtSearch}' == 'SmartOSC'          Search Text "SmartOSC"
#     ELSE     Search Text "SmartOSC Fintech"
Search Text "SmartOSC"
    
    Input Text     //*[@title='Tìm kiếm']     SmartOSC
    Wait Until Page Contains Element     //*[@role="listbox"]/parent::div/div[2]/center/input[1]     20s
    BuiltIn.Sleep    1
    Click Element      //*[@role="listbox"]/parent::div/div[2]/center/input[1]

Search Text "SmartOSC Fintech"
    Input Text     //*[@title='Tìm kiếm']     SmartOSC
    Wait Until Page Contains Element     //*[@role="listbox"]/parent::div/div[2]/center/input[1]     20s
    BuiltIn.Sleep    1
    Click Element      //*[@role="listbox"]/parent::div/div[2]/center/input[1]

*** Test Cases ***
HomeWork_4
# //1.1 Search keyword "SmartOSC" in https://google.com.vn
#     Open Browser    ${Google_url}    ${browser}
#     Maximize Browser Window
#     Wait Until Page Contains Element     //*[@title='Tìm kiếm']     20s
#     Input Text     //*[@title='Tìm kiếm']     SmartOSC
#     Wait Until Page Contains Element     //*[@role="listbox"]/parent::div/div[2]/center/input[1]     20s
#     BuiltIn.Sleep    1
#     Click Element      //*[@role="listbox"]/parent::div/div[2]/center/input[1]
#     Close Browser

# //2. Search keyword "SmartOSC" and go back and Search keyword "SmartOSC Fintech"
# //Search keyword SmartOSC
#     Open Browser    ${Google_url}    ${browser}
#     Maximize Browser Window
#     Wait Until Page Contains Element     //*[@title='Tìm kiếm']     20s
#     Input Text     //*[@title='Tìm kiếm']     SmartOSC
#     Wait Until Page Contains Element     //*[@role="listbox"]/parent::div/div[2]/center/input[1]     20s
#     BuiltIn.Sleep    1
#     Click Element      //*[@role="listbox"]/parent::div/div[2]/center/input[1]
#     Wait Until Page Contains Element     //*[@class='logo']     20s
# //Go back to search
#     Click Element      //*[@class='logo']
#     Wait Until Page Contains Element     //*[@title='Tìm kiếm']     20s
#     Input Text     //*[@title='Tìm kiếm']     SmartOSC Fintech
#     Wait Until Page Contains Element     //*[@role="listbox"]/parent::div/div[2]/center/input[1]     20s
#     BuiltIn.Sleep    1
#     Click Element      //*[@role="listbox"]/parent::div/div[2]/center/input[1]
#     Close Browser

//3 .Define If condition ( If SmartOSC ==> Search SmartOSC , else search "SmartOSC Fintech"
    Open Browser    ${Google_url}    ${browser}
    Maximize Browser Window
    Wait Until Page Contains Element     //*[@title='Tìm kiếm']     20s
    Sleep      1s
    Run Keyword IF       '${var_txtSearch}' == 'SmartOSC'          Search Text "SmartOSC"     
    ...     ELSE     Search Text "SmartOSC Fintech"
    Close Browser