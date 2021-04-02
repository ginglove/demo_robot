*** Settings ***
Library         SeleniumLibrary
Library         DateTime
Library         Collections
Resource        ../0_resource/resource0.robot
Documentation   Truy cập vào trang: http://www.demo.guru99.com/V4/index.php
Suite Setup         lauching
Suite Teardown     close all Browsers

*** Variables ***
${name}             new
${keywords}         covid
${adress}           SmartOSCbuilding
${city}             hanoi
${State}            hn
${pin}              123123
${phone}            123
${email}            128@12.com
${password}         123
${dob}              10101991
${text}
${element}



*** Test Cases ***
login
    login

new customer -Input all information for all fields in that form.-Verify if that customer has inserted successfully or not
    click element   //A[@href='addcustomerpage.php'][text()='New Customer']
    input text   //INPUT[@name='name']        ${name}
    click element      //INPUT[@name='rad1'][1]   
    input text  //INPUT[@id='dob']          ${dob}
    input text  //TEXTAREA[@rows='5']       ${adress}
    input text  //INPUT[@name='city']       ${city}
    input text  //INPUT[@name='state']      ${State}
    input text  //INPUT[@name='pinno']      ${pin}
    input text  //INPUT[@name='telephoneno']    ${phone}
    input text  //INPUT[@name='emailid']    ${email}
    input text  //INPUT[@name='password']   ${password}  
    click element   //INPUT[@type='submit']   
    #Go to   http://www.demo.guru99.com/V4/manager/CustomerRegMsg.php?cid=72443
    ${CustomerID}	  Get text  //table[@id='customer']//td[text()='Customer ID']//following::td	 
    ${Name1}   Get text  //table[@id='customer']//td[text()='Customer Name']//following::td
    ${Gender1}		  Get text  //table[@id='customer']//td[text()='Gender']//following::td		
    ${Birthdate1}     Get text  //table[@id='customer']//td[text()='Birthdate']//following::td
    ${dob1}    Convert Date    ${Birthdate1}    result_format=%d%m%Y	
    ${Address1}       Get text  //table[@id='customer']//td[text()='Address']//following::td		
    ${City1}             Get text  //table[@id='customer']//td[text()='City']//following::td			
    ${State1}         Get text  //table[@id='customer']//td[text()='State']//following::td		
    ${Pin1}           Get text  //table[@id='customer']//td[text()='Pin']//following::td			
    ${Mobile No.1}	  Get text  //table[@id='customer']//td[text()='Mobile No.']//following::td	
    ${Email1}         Get text  //table[@id='customer']//td[text()='Email']//following::td
            
    
            Should be equal as strings   ${name}    ${Name1}
            Should be equal as strings    ${Gender1}		male
            Should be equal as strings    ${dob1} 	${dob}
            Should be equal as strings    ${Address1}   	${adress}
            Should be equal as strings    ${City1}      	${city}
            Should be equal as strings    ${State1}       ${state}
            Should be equal as strings    ${Pin1}       	${pin}
            Should be equal as strings    ${MobileNo.1}	${phone}
            Should be equal as strings    ${Email1}   	${email}

        ${status} =     page should contain         ${CustomerID}     
        Run keyword Unless  '${CustomerID}' == '${EMPTY}'     log to console    'Customer Registered Successfully' 
        

      
