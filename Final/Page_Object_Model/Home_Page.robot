***Keywords***
Click on Logo in Home page
    Click Element       ${logo_Homepage} 
    Sleep   1   

Add items to Cart from Homepage
    Set Focus To Element    ${AddToCart}
    Wait Until Element Is Visible     ${AddToCart}      30s  
    Click Element   ${AddToCart}
    Wait Until Page Contains    Add product successfully    30s
    Sleep   2
    Click Element       ${Close_Popup}

Add items to Wishlist from Homepage
    Set Focus To Element    ${AddToWishlist}
    Wait Until Element Is Visible     ${AddToWishlist}      30s  
    Click Element   ${AddToWishlist}
    Wait Until Page Contains    You have added this product to your wishlist    30s
    Sleep   2
    Click Element       ${Close_Popup}
Click Wishlist icon
    Sleep   2
    Click Element       ${Icon_Wishlist}

Go to Cart by click Mini Cart icon
    Sleep  3
    Wait Until Element Is Visible    ${Cart_icon}
    Click Element     ${Cart_icon}

Click Proceed to Checkout button
    Wait Until Page Contains Element       ${Checkout_btn} 
    Click Element     ${Checkout_btn} 
    Sleep   2

Click View Cart button
    Wait Until Page Contains Element  ${viewcart_btn}     30s
    Click Element       ${viewcart_btn}
