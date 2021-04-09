*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${checkoutPage_url}                  https://uat.b2s.co.th/checkout/cart/
${guest_email}                       (//input[@name='username'])[1]
${firstname}                         //INPUT[@name='firstname'][1]
${lastname}                          //INPUT[@name='lastname'][1]
${address}                           //input[@name='street[0]'][1]
${city}                              //input[@name='city'][1]
${country}                           //select[@name='country_id'][1]
${region}                            //input[@name='region'][1]
${telephone}                         //INPUT[@name='telephone'][1]
${postcode}                          //input[@name='postcode'][1]
${paybycredit}                       //INPUT[@value='p2c2p_cc']
${btn_placeorder}                    (//BUTTON[@class='action primary checkout'])[4]
${cardno}                            //INPUT[@id='credit_card_number']
${cardname}                          //INPUT[@id='credit_card_holder_name'] 
${exp_month}                         //SELECT[@id='credit_card_expiry_month']
${exp_year}                          //SELECT[@id='credit_card_expiry_year'] 
${cvv}                               //INPUT[@id='credit_card_cvv']
${btn_submit}                        //INPUT[@id='btnCCSubmit']
${onePageSuccess_orderNumber}        //span[@class='order-number']
${rdBtn_shippingAddressGroupName}    shipping_address_choice
${rdBtn_shippingAddressValue}        billing                                            
${rdBtn_paymentgroupname}            payment[method]                                    
${rdBtn_paymentvalue}                p2c2p_cc
*** Keywords ***
Click Proceed to Checkout button
    #wait Until location is   ${checkoutPage_url}
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
    wait until element is visible    ${cardno}        
    input text                       ${cardno}        378734493671000
    input text                       ${cardname}      tieuthotho
    select from list by label        ${exp_month}     02
    select from list by label        ${exp_year}      2026
    input text                       ${cvv}           123
    click element                    ${btn_submit}    
Verify thank you page
    wait until element is visible    ${idOrder}
    ${idOrder}                       Get Text      ${onePageSuccess_orderNumber}
    Should Not Be Empty              ${idOrder}    


