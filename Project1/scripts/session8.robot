*** Settings ***
Library                 SeleniumLibrary 
Library                 Collections
Resource                ../0_resource/resource3.robot
Documentation            Get list element in Menu of Web and get text of list and compare to verify the list is correct
Test Setup              lauching
Test Teardown           close all browsers

*** Variables ***

*** Test Cases ***
# Use [Arguments] to define input value with keyword
#      [Documentation]    1. Create list keywords : Iphone 12 , Apple , Covid, Covid-19. Find Element using Get WebElement and iteraction with element . Search list keyword  in https://dantri.com.vn"
#     @{list}         create list    Iphone 12   Apple   Covid   Covid-19
#     Arguments from list     @{list}

# *** Keywords ***
# Arguments from list 
#     [Arguments]     @{list} 

#     ${arg}      Get from list       ${list}     0
#     input text      ${searchtextbox}    ${arg}
#     submit form
#     sleep   2s 
#     ${arg}      Get from list       ${list}     2
#     input text      ${searchtextbox}    ${arg}
#     submit form
#     ${arg}      Get from list   ${list}     1
#     input text      ${searchtextbox}    ${arg}
#     submit form
#     ${arg}      Get from list   ${list}     3
#     input text      ${searchtextbox}    ${arg}
#     submit form
1. Get list element in Menu of Web and get text of list and compare to verify the list is correct
    @{expected}     create list      Video                 Sự kiện                 Xã hội                 Thế giới                 Kinh doanh                 Bất động sản                 Thể thao                 Việc làm                 Nhân ái                 Sức khỏe                 Văn hóa                 Giải trí                 Xe ++                 Sức mạnh số                 Giáo dục                 An sinh     
    @{actual}       create list
    ${elements}=    Get WebElements    //div[@class='container']//li[@class='dropdown dropdown--hover']
    FOR    ${element}    IN    @{elements}
        ${text}=         Get Text    ${element}
        Append To List   ${actual}    ${text}
    END
    
        ${text1}=    Get Text    //div[@class='container']//li[@class='dropdown dropdown--hover dropdown--right']
        Append To List   ${actual}    ${text1}
    Get Length      ${actual}
    Log many        @{actual}
    Lists should be equal        ${expected}     ${actual}          khong giong nhau

2 . Get list element in Menu of dantri
    ${elements}=    Get WebElements    //div[@class='container']//li[@class='dropdown dropdown--hover']
    log many        @{elements}