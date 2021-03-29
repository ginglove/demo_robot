*** Settings ***
Library         SeleniumLibrary
Resource        ../0_resource/resource3.robot
Documentation   baitap3 dantri.com
Suite Setup        resource3.lauching
Suite Teardown     close all Browsers

*** Variables ***
${keywords}         covid



*** Test Cases ***
Testcase search for text
    [Documentation]    "1.1 Search keyword ""Covid"" in https://dantri.com.vn2 Search keyword ""Covid"" and go back and Search keyword ""Covid-19""
    input text    ${searchtextbox}    ${string1}
    submit form
    go back 
    input text    ${searchtextbox}    ${string2}
    submit form


Testcase search with if else condition
    [Documentation]  3. Define If condition ( If Covid ==> Search Covid , else search ""Covid-19""" 
    
    run keyword IF      '${keywords}' == '${string1}'         searchvalue1
    ...     ELSE        searchvalue2
    Close Browser


