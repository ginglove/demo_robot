*** Settings ***
Library     SeleniumLibrary
Library     Collections

# Resource       ../Variable/Variable.robot

*** Variables ***
${Google_url}	https://dantri.com.vn/
${browser}	Chrome
${ignore_order} = "False"  
${Text}
 
*** Keywords ***

*** Test Cases ***
HomeWork Session 6
   Open Browser    ${Google_url}    ${browser}
    Maximize Browser Window
    Sleep    1
     @{Expected_List}    Create List    Video    Sự kiện    Xã hội    Thế giới    Kinh doanh    Bất động sản    Thể thao    Việc làm    Nhân ái    Sức khỏe    Văn hóa    Giải trí
     @{Actual_list}    Create List
     ${length_Expected}   Get Length      ${Expected_List}
     
    # Log    ${length}    
    FOR     ${index}    IN RANGE    0    ${length_Expected}
        ${Text}     Get Text     //*[@class="site-menu__list list-unstyled"]/li[${index}+2]
        Append To List    ${Actual_list}       ${Text}
    END  
    log    ${Actual_list}  
    Lists Should Be Equal       ${Expected_List}        ${Actual_list}
    Close Browser
