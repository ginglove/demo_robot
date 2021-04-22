*** Settings ***
Library     SeleniumLibrary
Library     Collections

*** Variables ***
${url}        https://cafef.vn/
${browser}        chrome
@{List B}    
@{menu1}    
@{menu2}  

*** Keywords ***

*** Test Cases ***
HomeWork Session 7 - Homework 1
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Sleep    1
    @{List A}    Create List   Home     THỜI SỰ    CHỨNG KHOÁN    BẤT ĐỘNG SẢN    DOANH NGHIỆP    NGÂN HÀNG    TÀI CHÍNH QUỐC TẾ    VĨ MÔ    SỐNG    THỊ TRƯỜNG    ...    Dữ liệu    Top 200
  
 
    FOR     ${index}    IN RANGE    0    10
            ${index}    Get Text      //*[starts-with(@class,'acvmenu')][${index}+1]
            Append To list    ${menu1}       ${index} 
    END
    log     ${menu1} 

    FOR     ${index1}    IN RANGE    0    3
            ${index2}    Get Text      //*[@id="menu-thi-truong"]/following-sibling::li[${index1}+1]
            Insert Into List     ${menu2}     0       ${index2} 
    END
    BuiltIn.log    ${menu2}

    @{List B}    Combine Lists    ${menu1}    ${menu2}
    Log        ${List B}
#     Log    ${Actual_menu}
#     Get From List with index = 2
    ${X}        Get From List    ${List A}     2
    log    ${X}
    ${Y}        Get From List    ${List B}     2
    log    ${Y}
#     Remove values which we get from ("Get From List")  from List A and remove values from List B ( and compare 2 List after remove values)
    Remove Values From List        ${List A}     ${X}
    Remove Values From list        ${List A}     Home
    Remove Values From list        ${List A}     ...
    Remove Values From List        ${List B}     ${Y}
#     ${z}    Get From List    ${List A}     0

    Remove Values From List        ${List B}      ${EMPTY}
    Log    ${List A}
    Log    ${List B}
# Count value in list A and B
    ${A}        Count Values In List    ${List A}     NGÂN HÀNG
    ${B}        Count values In List    ${List B}     NGÂN HÀNG
    Should be equal   ${A}    ${B}


# Compare List A and List B after remove some values
    Lists Should Be Equal     ${List B}    ${List A}   
