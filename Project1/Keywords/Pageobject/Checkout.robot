*** Settings ***
Library    SeleniumLibrary
*** Variables ***

*** Keywords ***
Verify location link
    Location Should Be    ${checkoutPage_url}    
Click Proceed to Checkout button
    wait until element is visible    ${label_checkout}
    Click Element                    ${label_checkout} 
Fill shipping infomation
    Wait Until Element Is Visible    ${lastname}
    ${present}                       Run Keyword And Return Status        Element Should Be Visible    ${guest_email}
    Run Keyword If                   ${present}                           Input Text                   ${guest_email}    EE@doc.com
    Wait Until Element Is Visible    ${firstname}                         
    ${txt_guestfname}                get value                            ${firstname}                 
    #input text                       ${firstname}                          QQName
    Run Keyword if                   '${txt_guestfname}' == '${Empty}'    input text                   ${firstname}      QQName
    Wait Until Element Is Visible    ${lastname}
    ${txt_guestlname}                get value                            ${lastname}
    Run Keyword if                   '${txt_guestlname}' == '${Empty}'    input text                   ${lastname}       QQ
    input text                       ${lastname}                          QQ 
    input text                       ${address}                           12qwery
    input text                       ${city}                              hn

    Select from list by label    ${country}                           กรีนแลนด์
    input text                   ${region}                            abc                              
    input text                   ${telephone}                         1234556
    input text                   ${postcode}                          123456
    Select Radio button          ${rdBtn_shippingAddressGroupName}    ${rdBtn_shippingAddressValue}
    select Radio button          ${rdBtn_paymentgroupname}            ${rdBtn_paymentvalue}            
    Wait For Condition           return jQuery.active == 0
    click element                ${btn_placeorder}
Perform Payment steps from 3rd party

    wait until element is visible    ${cardno}        20s
    input text                       ${cardno}        378734493671000
    input text                       ${cardname}      tieuthotho
    select from list by label        ${exp_month}     02
    select from list by label        ${exp_year}      2026
    input text                       ${cvv}           123
    click element                    ${btn_submit}    
Verify thank you page guest
    wait until element is visible    ${onePgSuccess_orderNumber_guest}    40s
    ${idOrder}                       Get Text                             ${onePgSuccess_orderNumber_guest}    
    Should Not Be Empty              ${idOrder} 
    Page should contain              Thank you for your order
Verify thank you page customer
    wait until element is visible    ${onePgSuccess_orderNumber_customer}    60s
    ${idOrder}                       Get Text                                ${onePgSuccess_orderNumber_customer}    
    Should Not Be Empty              ${idOrder} 
    Page should contain              Thank you for your order



