
*** Settings ***
Library                 SeleniumLibrary 
Library                 Collections
Resource                ../0_resource/resource4.robot
Documentation           For condition practise
Test Setup              lauching
Test Teardown           close all browsers


*** Variables ***

${textbox_loc}      //div[@class='news-metadata'][1]//child::p
@{NUMBERS}          ${0}    ${1}    ${5}
@{NAMES}            zero     one     five
@{count}            10

*** Test Cases ***
# For condition in range
#     FOR     ${index}    IN RANGE    0       10  12
#         Log  ${index}
#     END
# For condition in ENUMERATE
#     FOR    ${index}    ${en}    ${fi}    IN ENUMERATE
#     ...    cat      kissa
#     ...    dog      koira
#     ...    horse    hevonen
#         Log    "${en}" in English is "${fi}" in Finnish (index: ${index})
#     END


# Iterate over two lists manually
#     ${length}=    Get Length    ${NUMBERS}
#     FOR    ${index}    IN RANGE    ${length}
#         Log Many    ${NUMBERS}[${index}]    ${NAMES}[${index}]
#     END
# 7 - Create Webdriver and combine with Go to
#    [Arguments]        ${url}
#    ${chrome_options}=  Evaluate  sys.modules['selenium.webdriver'].ChromeOptions()  sys, selenium.webdriver
#    Call Method    ${chrome_options}    add_argument    .C:\Users\hienqn\config\chromedriver
#    Call Method    ${chrome_options}    add_argument    test-type
#    Call Method    ${chrome_options}    add_argument    --disable-extensions
#    Call Method    ${chrome_options}    add_argument    --headless
#    Call Method    ${chrome_options}    add_argument    --disable-gpu
#    Call Method    ${chrome_options}    add_argument    --no-sandbox
#    Call Method    ${chrome_options}    add_argument    --disable-dev-shm-usage
#   Create Webdriver                                  Chrome              chrome_options=${chrome_options}
#    Go To                                             ${url}
Handle element
    Element Should Be Visible    ${textbox_loc}
    ${found}      Get Text        ${textbox_loc}

    ${ls_test}      Create List    1auto    2auto     
    Append To List      ${ls_test}          3auto
       
    Insert into list    ${ls_test}    0   value0
    Log     ${ls_test}
    
    ${length}=    Get Length    ${ls_test}
        
    FOR    ${index}    IN RANGE         0    ${length}
        Log many       ${ls_test}[${index}] 
    END

    ${ls_test1}      Create List    abcd    bcd
    ${new_ls_test}      Create List         abcd    bcd
    Lists Should Be Equal    ${ls_test1}      ${new_ls_test}          compare result:Lists are not Same

