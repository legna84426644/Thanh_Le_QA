*** Settings ***
Library    SeleniumLibrary    run_on_failure=Capture Page Screenshot

*** Variables ***
${BROWSER_SIZE_WIDTH}    1600
${BROWSER_SIZE_HEIGHT}    900
${DRIVER_TYPE}    chrome
${HOST}           https://uat.ormuco.com/login
${TIMEOUT_SECONDS}    15s
${EXT_TIMEOUT_SECONDS}    60s
