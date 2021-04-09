***Settings***
Resource    ../PageObjects/PaymentPage.robot
Resource    ../DataTest/PaymentPage.robot

**Keywords***
Fill Payment Information
    Wait Until Element Is Visible   ${paymentPg_continuePayment}  20s
    Input Text  ${paymentPg_masterpass}   ${masterpass}
    Input Text  ${paymentPg_creditCardHolderName}     ${creditCardHolderName}
    Select From List By Label   ${paymentPg_creditCardExpiryMonth}  ${creditCardExpiryMonth}
    Select From List By Label   ${paymentPg_creditCardExpiryYear}  ${creditCardExpiryYear}
    Input Text  ${paymentPg_creditCardCvv}     ${creditCardCvv}
    Select From List By Label   ${paymentPg_creditCardIssuingBankCountry}  ${creditCardIssuingBankCountry}
    Select From List By Label   ${paymentPg_creditCardIssuingBankDdl}  ${creditCardIssuingBankDdl}
    Input Text  ${paymentPg_cardholderEmail}     ${cardholderEmail} 

Do Payment 
    Click Button    ${paymentPg_continuePayment} 
