***Settings***
Resource    ../PageObjects/OneStepCheckoutPage.robot
Resource    ../DataTest/OneStepCheckoutPage.robot
***Keywords***
Fill Shipping Address
    Wait Until Element Is Visible   ${checkoutPg_street} 
    ${present}      Run Keyword And Return Status       Element Should Be Visible   ${checkoutPg_userName}
    Run Keyword If   ${present}     Input Text  ${checkoutPg_userName}     ${checkoutPgData_userName}
    ${firstName}    Get Value   ${checkoutPg_firstName}
    Run Keyword If    '${firstName}' == '${EMPTY}'    Input Text  ${checkoutPg_firstName}    ${checkoutPgData_firstName}
    ${lastName}    Get Value   ${checkoutPg_lastName}
    Run Keyword If    '${lastName}' == '${Empty}'    Input Text  ${checkoutPg_lastName}     ${checkoutPgData_lastName}
    Input Text  ${checkoutPg_street}       ${checkoutPgData_street}
    Wait Until Element Is Visible   ${checkoutPg_country} 
    Select From List By Value   ${checkoutPg_country}   ${checkoutPgData_country}
    Input Text  ${checkoutPg_city}     ${checkoutPgData_city}
    Input Text  ${checkoutPg_postCode}     ${checkoutPgData_postCode}
    Input Text  ${checkoutPg_telephone}    ${checkoutPgData_telephone}
    Select Radio button     ${checkoutPg_shipAddGroupName}    ${checkoutPg_shipAddValue}
    Wait Until Element Is Visible    ${checkoutPg_paymentMethod}  
    Select Radio button     ${checkoutPg_paymentMethodGroupName}    ${checkoutPg_paymentMethodValue} 
    Wait For Condition	return jQuery.active == 0
    # Sleep    5s
    Click Button    ${checkoutPg_btnPlaceOrder}
