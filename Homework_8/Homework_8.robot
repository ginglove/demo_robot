*** Settings ***
Library     SeleniumLibrary
Library     Collections
*** Variables ***
${url}       https://vietnamnet.vn/
${browser}        chrome
@{List_element}
@{Sub_menu}
@{Txt_menu}

*** Keywords ***

*** Test Cases ***
HomeWork Session 8 - Homework 3

    [Teardown]    Close Browser
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Sleep    1
    ${List_element}       Get WebElements       //*[@class="menu-top "]/li/a  
    ${count}    Get length    ${List_element} 
        FOR    ${i}    IN RANGE    0      ${count}
            ${index}=     Evaluate    ${i} + 1
            ${txt}    Get Element Attribute    //*[@class="menu-top "]/li[${index}]/a    title
            log    ${txt}
            Append To List    ${Sub_menu}    ${txt}

        END

        FOR    ${y}    IN RANGE    0      ${count}
            ${index}=     Evaluate    ${y} + 1
            ${t} =   Get Text     //*[@class="menu-top "]/li[${index}]/a
            log    ${t}
            Append To List    ${Txt_menu}    ${t}
        END 
        Log    ${Sub_menu}
        log    ${Txt_menu}
        Lists Should Be Equal    ${Sub_menu}    ${Txt_menu}

    