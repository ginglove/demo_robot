*** Settings ***
Library                 SeleniumLibrary 
Library                 Collections
Resource                ../0_resource/resource5.robot
Documentation           Get list element in Menu of kenh14
Test Setup              lauching
Test Teardown           close all browsers

*** Variables ***

*** Test Cases ***
1. Get list element in Menu of Web and get text of list and compare to verify the list is correct
    @{expected}     create list      Star    TV Show    Ciné     Musik      Beauty & Fashion      Xem Mua Luôn    Đời sống      Ăn - Quẩy - Đi      Xã hội      Thế giới    Sport     Học đường      Video  
    @{actual}       create list
    ${elements}=    Get WebElements    //ul[@class='kbh-menu-list clearfix fl']//li[@class='kmli ']
    FOR    ${element}    IN    @{elements}
        ${text}=         Get Text     ${element}
        Append To List   ${actual}    ${text}
    END
        ${text1}=        Get Text     //ul[@class='kbh-menu-list clearfix fl']//li[@class='kmli']
        Append To List   ${actual}    ${text1}
    Get Length           ${actual}
    Log many             @{actual}
    Lists should be equal        ${expected}     ${actual}          khong giong nhau

2 . Get list element in Menu 
    ${elements}=    Get WebElements    //ul[@class='kbh-menu-list clearfix fl']//li[@class='kmli ']
    log many        @{elements}