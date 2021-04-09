***Variables***
# Page: OneStepCheckoutPage
${checkoutPg_userName}     xpath:(//input[@name='username'])[1]
${checkoutPg_firstName}    xpath:(//input[@name='firstname'])[1]
${checkoutPg_lastName}    xpath:(//input[@name='lastname'])[1]
${checkoutPg_street}    xpath:(//input[@name='street[0]'])[1]
${checkoutPg_city}    xpath:(//input[@name='city'])[1]
${checkoutPg_postCode}    xpath:(//input[@name='postcode'])[1]
${checkoutPg_telephone}     xpath:(//input[@name='telephone'])[1]
# ${slt_region}    xpath:(//select[@name='region_id'])[1]
${checkoutPg_country}   xpath:(//select[@name='country_id'])[1]
${checkoutPg_shipAddGroupName}  shipping_address_choice
${checkoutPg_shipAddValue}  billing
${checkoutPg_paymentMethod}   xpath://input[@name='payment[method]'] 
${checkoutPg_paymentMethodGroupName}  payment[method]
${checkoutPg_paymentMethodValue}  p2c2p_cc
${checkoutPg_btnPlaceOrder}  xpath:(//button[@class='action primary checkout'])[4]
        
# PaymentPage




