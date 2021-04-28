***Keywords***
Confirm Open Shipping Info Form
    Wait Until Page Contains        Billing Information
    
Input Shipping Info(User logged-in)
    Wait Until Element Is Visible      ${billingAddress}    30s
    Input Text      ${billingAddress}      Handico Pham Hung
    Input Text      ${city}           Ha Noi
    Click Element      ${region_Dropdown_field}  
    Wait Until Page Contains Element    ${Drop_down_region_value_1}   10s
    Click Element   ${Drop_down_region_value_1}
    Sleep   2
    Set Focus To Element        ${postcode}    
    Input Text        ${postcode}          10000
    Sleep   2
    Set Focus To Element        ${Phone_num}
    Input Text    ${Phone_num}     0912549332

Input Shipping Info(User have not login)
    Wait Until page Contains Element    ${info_email}      30s
    Input Text  ${info_email}      Duyenlt@smartosc.com
    Input Text  ${info_fist_name}     Le
    Input Text  ${info_last_name}      Duyen
    Input Text  ${billingAddress}      Handico Pham Hung
    Input Text  ${city}           Ha Noi
    Sleep   2
    Click Element   ${region_Dropdown_field} 
    Wait Until Page Contains Element    ${Drop_down_region_value_1}  10s
    Click Element   ${Drop_down_region_value_1}
    Sleep   2
    Set Focus To Element    ${postcode} 
    Input Text   ${postcode}       10000
    Sleep   2
    Set Focus To Element    ${Phone_num}  
    Input Text    ${Phone_num}      0912549332

Select Payment Method
    Set Focus To Element    ${cash} 
    Click Element       ${cash} 
    Sleep   2

Click Place Order
    Execute JavaScript    window.scrollTo(0, -200)
    Sleep    2
    Click Element       ${btn_PlaceOrder} 
    Sleep    1