***Settings***
Resource    ../PageObjects/OnePageSuccess.robot
Resource    ../DataTest/OneStepCheckoutPage.robot
Resource    ../DataTest/OnePageSuccess.robot
***Keywords***
Verify Payment Successfully For Guest
    Wait Until Location Contains    ${onePgScData_url}    30s
    Element Text Should Be    ${onePgSuccess_title}    ${onePgScData_title}
    ${idOrder}  Get Text       ${onePgSuccess_orderNumber_guest}
    Log     ${idOrder} 
    Should Not Be Empty     ${idOrder}
    Element Text Should Be    ${onePgSuccess_emailLink}    ${checkoutPgData_userName}
    Element Text Should Be    ${onePgSuccess_email}    ${checkoutPgData_userName}

Verify Payment Successfully For Customer
    Wait Until Location Contains    ${onePgScData_url}    30s
    Element Text Should Be    ${onePgSuccess_title}    ${onePgScData_title}
    ${idOrder}  Get Text       ${onePgSuccess_orderNumber_customer}
    Log     ${idOrder} 
    Should Not Be Empty     ${idOrder}
    Element Text Should Be    ${onePgSuccess_emailLink}    ${email}