
*** Settings ***
Library                 SeleniumLibrary 
Library                 Collections
Resource                ../0_resource/resource2.robot
Documentation           For condition practise

*** Variables ***

@{NUMBERS}       ${0}    ${1}    ${5}
@{NAMES}         zero     one     five
@{count}        10
*** Test Cases ***
For condition in range
    FOR     ${index}    IN RANGE    0       10  12
        Log  ${index}
    END
For condition in ENUMERATE
    FOR    ${index}    ${en}    ${fi}    IN ENUMERATE
    ...    cat      kissa
    ...    dog      koira
    ...    horse    hevonen
        Log    "${en}" in English is "${fi}" in Finnish (index: ${index})
    END


Iterate over two lists manually
    ${length}=    Get Length    ${NUMBERS}
    FOR    ${index}    IN RANGE    ${length}
        Log Many    ${NUMBERS}[${index}]    ${NAMES}[${index}]
    END
7 - Create Webdriver and combine with Go to
   [Arguments]        ${url}
   ${chrome_options}=  Evaluate  sys.modules['selenium.webdriver'].ChromeOptions()  sys, selenium.webdriver
   Call Method    ${chrome_options}    add_argument    .C:\Users\hienqn\config\chromedriver
   Call Method    ${chrome_options}    add_argument    test-type
   Call Method    ${chrome_options}    add_argument    --disable-extensions
   Call Method    ${chrome_options}    add_argument    --headless
   Call Method    ${chrome_options}    add_argument    --disable-gpu
   Call Method    ${chrome_options}    add_argument    --no-sandbox
   Call Method    ${chrome_options}    add_argument    --disable-dev-shm-usage
  Create Webdriver                                  Chrome              chrome_options=${chrome_options}
   Go To                                             ${url}