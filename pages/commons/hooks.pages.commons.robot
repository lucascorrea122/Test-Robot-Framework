*** Settings ***

Resource    ../../config/config.robot

*** Keywords ***
Start Test
    Open Browser    ${URL_HOST}     ${Browser}
    Set Window Size         ${BROSER_CUSTOMER_WIDHT}    ${BROSER_CUSTOMER_HEIGHT}
    Set Selenium Implicit Wait      ${TIME_TO_WAIT}


Finish Test
    Capture Page Screenshot
    Close Browser