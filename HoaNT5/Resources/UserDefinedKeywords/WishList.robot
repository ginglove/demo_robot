***Settings***
Resource    ../PageObjects/WishListPage.robot
Resource    ../DataTest/WishListPage.robot
***Variables***
# Set Suite Variable  ${quantity}   
# ${quantity2} 
***Keywords***
Decrease Product Quantity Number
    Wait Until Element Is Visible   ${wishListPg_quantity}
    ${quantity}     Get Value   ${wishListPg_quantity}
    Set Global Variable     ${quantity}
    Click Button     ${wishListPg_btnPlus}
    Click Button    ${wishListPg_updateWishList}

Verify Decrease Product Quantity Number Successfully
    Wait Until Element Is Visible   ${wishListPg_quantity}
    ${actualQuantity}    Get Value   ${wishListPg_quantity}
    ${expectedQuantity}    Evaluate     ${quantity}+1
    Should Be Equal As Integers     ${actualQuantity}    ${expectedQuantity} 

Increase Product Quantity Number
    Wait Until Element Is Visible   ${wishListPg_quantity}
    ${quantityIncr}     Get Value   ${wishListPg_quantity}
    Set Global Variable     ${quantityIncr}
    Click Button     ${wishListPg_btnMinus}
    Click Button    ${wishListPg_updateWishList}

Verify Increase Product Quantity Number Successfully
    Wait Until Element Is Visible   ${wishListPg_quantity}
    ${actualQuantity}    Get Value   ${wishListPg_quantity}
    ${expectedQuantity}    Evaluate     ${quantityIncr}-1
    Should Be Equal As Integers     ${actualQuantity}    ${expectedQuantity} 

Add All to Cart
    Wait Until Element Is Visible   ${wishListPg_addAlloCart}
    Click Button    ${wishListPg_addAlloCart}

Verify Add All to Cart Successfully
    Wait Until Element Is Visible   ${wishListPg_emptyMessage}
    Page Should Not Contain Element     ${wishListPg_quantity}
    Element Text Should Be    ${wishListPg_emptyMessage}    ${wishLtDt_emptyMessage}
    Wait For Condition	return jQuery.active == 0

