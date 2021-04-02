*** Variables ***
${url}          http://www.demo.guru99.com/V4/index.php
${Browser}      Chrome
${delay}        0
${searchtextbox}       
${string1}      covid
${string2}      covid-19
*** Keywords ***
lauching
    Open Browser        ${url}  ${Browser} 
    Maximize Browser Window
    Set Selenium Speed  ${delay}

login
    input text  //input[@name='uid']    mngr316985
    input text  //input[@name='password']   zahebUh
    click element   //INPUT[@name='btnLogin']
    

