***Settings***
Resource    ../PageObjects/PayerAuthenticationPage.robot
Resource    ../DataTest/PayerAuthenticationPage.robot

***Keywords***

Proceed Payment
    # Wait Until Element Is Visible   ${payerAuthenPg_proceed} 
    Wait For Condition	return jQuery.active == 0   15s
    Input Text  ${payerAuthenPg_otp}   ${otpCode}
    Click Button    ${payerAuthenPg_proceed}