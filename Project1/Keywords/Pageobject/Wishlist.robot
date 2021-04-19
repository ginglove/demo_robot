
*** Settings ***
Library    SeleniumLibrary
Library    BuiltIn 
*** Variables ***

***Keywords***
# Edit wishlist
#    #wait until location is    https://uat.b2s.co.th/wishlist/

#    @{btn_plus}      get web elements    //button[@class='btn-plus']
#    FOR              ${btn_minus}        in                             @{btn_plus}
#    click element    ${btn_minus}        
#    END              


Product Quantity Number
    Wait Until Element Is Visible    ${wishList_quantity}
    ${quantity}                      Get Value               ${wishList_quantity}
    Set Global Variable              ${quantity}
    Click Button                     ${btn_plus}
    Click Button                     ${update_wishlist}

Verify Update Wish List Successfully
    Wait Until Element Is Visible    ${wishList_quantity}
    ${actualQuantity}                Get Value               ${wishList_quantity}
    ${expectedQuantity}              Evaluate                ${quantity} +1
    Should Be Equal As Integers      ${actualQuantity}       ${expectedQuantity} 
    set Global Variable              ${actualQuantity}
Minus product quantity
    Wait Until Element Is Visible    ${wishList_quantity}

    click button    ${btn_minus} 
    Click button    ${update_wishlist}

    ${actualQuantity1}             Get Value             ${wishList_quantity}
    ${expectedQuantity}            Evaluate              ${actualquantity} - 1
    Should Be Equal As Integers    ${actualQuantity1}    ${expectedQuantity} 

Add wishlist to cart
    click element                    ${btn_addalltocart}             
    # Wait For Condition               return jQuery.active == 0
    wait until element is visible    //span[@class='counter qty']    20s

Select minicart

    # Wait For Condition               return jQuery.active == 0
    click element    ${btn_minicart1}
    # wait until element is visible    //DIV[@id='ui-id-1']
    click element    ${btn_viewcart}



