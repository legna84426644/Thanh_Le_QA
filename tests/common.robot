*** Settings ***
Resource          settings.robot

*** Keywords ***
Create Driver
    Run Keyword If    '${DRIVER_TYPE}' == 'chrome_headless'    Create Chrome Headless
    Run Keyword If    '${DRIVER_TYPE}' == 'chrome'    Create Chrome
    Run Keyword If    '${DRIVER_TYPE}' == 'firefox_headless'    Create Firefox Headless
    Run Keyword If    '${DRIVER_TYPE}' == 'firefox'    Create Firefox

Create Chrome Headless
     Open Browser    data:.    headlesschrome

Create Firefox Headless
    Open Browser    about:logo    headlessfirefox

Create Chrome
     Open Browser    data:.    chrome

Create Firefox
    Open Browser    about:logo    ff

Common Suite Setup
    Set Selenium Timeout    ${TIMEOUT_SECONDS}
    Create Driver
    Go To    ${HOST}

Common Suite Teardown
    Alert Should Not Be Present
    Delete All Cookies
    Close All Browsers