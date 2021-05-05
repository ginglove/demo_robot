/// <reference types="cypress"/>
it('B2S Testcase', function(){
    cy.visit('https://uat.b2s.co.th/')
    cy.wait(5000)
    //Add 1 item to cart
    cy.xpath('(//*[@class="action tocart primary"])[8]').click()
    //Close Add success/fail popup
    cy.get('#mb-ajaxsuite-close').click()
    //Click Mini Cart icon
    cy.get('.showcart').click()
    //Click View Cart button
    cy.xpath('(//*[@class="actions viewcart"])[1]', { timeout: 10000 }).should('be.visible');
    cy.get('div.viewcart > .actions').click()
    cy.contains('Your cart items',{timeout:10000})
    //Click Proceed to Checkout button
    cy.wait(2000)
    cy.get('.item > .action').click()
    cy.wait(3000)
    //input shipping info
    cy.get('#customer-email-fieldset > .required > .control > #customer-email').type('duyen@smartosc.com')
    cy.xpath('(//*[@name="firstname"])[1]').type('Le Thi')
    cy.xpath('(//*[@name="lastname"])[1]').type('Duyen')
    cy.xpath('(//*[@name="street[0]"])[1]').type('Pham Hung')
    cy.xpath('(//*[@name="city"])[1]').type('Ha Noi')
    cy.xpath('(//*[@name="region_id"])[1]').select('กระบี่')
    cy.xpath('(//*[@name="postcode"])[1]').type('10000')
    cy.xpath('(//*[@name="telephone"])[1]').type('0123456789')
    //Select payment method
    cy.get('#cashondelivery').click()
    cy.wait(1000)
    cy.scrollTo('center')
    cy.get('.place-order-primary > .action').click()
    cy.wait(5000)
    //Confirm Perform Payment steps from 3rd party successfully
    cy.scrollTo('center')
    cy.contains('Thank you for your order')

   
})