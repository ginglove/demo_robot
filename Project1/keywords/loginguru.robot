*** Variables ***
${url}          http://www.demo.guru99.com/V4/index.php
${Managerhomepage}      http://www.demo.guru99.com/V4/manager/Managerhomepage.php 
${Browser}      Chrome
${delay}        0
${searchtextbox}       
${string1}      covid
${string2}      covid-19
*** Keywords ***
open browser and access website 
    Open Browser        ${url}  ${Browser} 
    Maximize Browser Window
    Set Selenium Speed  ${delay}

login
    input text  //input[@name='uid']    mngr316985
    input password  //input[@name='password']   zahebUh
    click element   //INPUT[@name='btnLogin']
verify location link    
    location should be    ${Managerhomepage} 
# input email
#     [Arguments]     ${email}   
#     input text        //INPUT[@name='emailid']                   ${email}              
    

