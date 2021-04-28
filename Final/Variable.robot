*** Variables ***
${url}       https://uat.b2s.co.th/
${browser}        chrome
${Xpath_Login_Link}     //*[@class="authorization-link"]
${Xpath_Email}     //*[@id="email"]
${Xpath_Pass}     //*[@name="login[password]"]
${Xpath_btn_Login}   //*[@class="action login primary"]
${logo_Homepage}    //*[@class="logo"]
${AddToWishlist}   (//*[@class="action btn-towishlist"])[9]
${AddToCart}        (//*[@class="action tocart primary"])[7]
${int}
${Close_Popup}      //*[@id="mb-ajaxsuite-close"]
${Icon_Wishlist}     //*[@class="wishlist-link"]/a
${Increase_icon}      (//*[@class="btn-plus"])[1]
${Decrease_icon}      (//*[@class="btn-minus"])[1]
${Update_WL_btn}       //*[@Title="Update Wish List"]
${Add_All_To_Cart_btn}      //*[@Title="Add All to Cart"]
${Cart_icon}        //a[@class="action showcart"]
${Checkout_btn}     //*[@id="top-cart-btn-checkout"] 
${viewcart_btn}     //*[@class="actions viewcart"]/a
${info_email}            (//*[@id="customer-email"])[1]
${info_fist_name}       (//*[@name="firstname"])[1]   
${info_last_name}       (//*[@name="lastname"])[1]                
${billingAddress}    (//*[@name="street[0]"])[1]
${city}              (//*[@name="city"])[1]
${region_Dropdown_field}         (//*[@name="region_id"])[1]
${Drop_down_region_value_1}    (//*[@Value="486"])[1]
${postcode}             (//*[@name="postcode"])[1]
${Phone_num}        (//*[@name="telephone"])[1]
${cash}             //*[@id="cashondelivery"]
${btn_PlaceOrder}      (//*[@class="action primary checkout"])[4]
${btn_Checkout}         //*[@class="action primary checkout"]


