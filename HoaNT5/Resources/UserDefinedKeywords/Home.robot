***Settings***
Resource    ../PageObjects/HomePage.robot
Resource    ../PageObjects/WishListPage.robot

*** Keywords ***
Select EN Language
    Click Link  ${home_language}  

# Login
Go on Login Page
    Click Element     ${home_login} 

Verify Successful Login
    Wait Until Element Is Visible    ${home_logout} 

# Add to Cart
Add to Cart
    Wait Until Element Is Visible   ${home_addToCart} 
    Click Element   ${home_addToCart} 
    Wait For Condition	return jQuery.active == 0 

Verify Successful Add to Cart    
    Wait Until Element Is Visible    ${home_addToCart_result}    30s
    Element Text Should Be    ${home_result}    SUCCESS
    Click Element   ${home_closeAddToCartResultPopup}

Go to Cart
    Wait Until Element Is Visible   ${home_quantityCart}
    Click Link    ${home_miniCart} 
    # Wait Until Element Is Visible    ${home_viewCart}    
    Click Link    ${home_viewCart} 

# Add to Wish List
Add to Wish List
    Wait Until Element Is Visible   ${home_addToWishlist} 
    Click Element   ${home_addToWishlist}  

Verify Successful Add to Wish List    
    Wait Until Element Is Visible    ${home_addToCart_result}   30s   
    Element Text Should Be    ${home_result}    SUCCESS
    # Click Element   ${home_closeAddToCartResultPopup}
    Wait Until Element Is Not Visible    ${home_addToCart_result}    12s
    Click Link    ${home_wishList}