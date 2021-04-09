*** Variables ***
${home_language}     xpath://div[@id='switcher-language']//a
${home_login}    xpath://a[contains(text(),'Login or Sign Up')]
${home_logout}    xpath://a[contains(text(),'Sign Out')]
${home_addToCart}    xpath:(//button[@class='action tocart primary'])[6]

${home_closeAddToCartResultPopup}   xpath://a[@id='mb-ajaxsuite-close']
${home_miniCart}    xpath://a[@class='action showcart']
${home_viewCart}    xpath://a[@class='actions viewcart']
${home_addToCart_result}    xpath://div[@id='mb-ajaxsuite-popup-wrapper']
${home_result}    xpath://div[contains(@class,'mb-login-popup-title')]/strong
${home_quantityCart}    xpath://span[@class='counter qty']

${home_addToWishlist}   xpath:(//a[@class='action btn-towishlist'])[6]
${home_wishList}    xpath://li[@class='wishlist-link']/a



