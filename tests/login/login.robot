*** Settings ***
Suite Setup    Common Suite Setup
Suite Teardown    Common Suite Teardown

Resource    ../common.robot
Resource    ../settings.robot

Force Tags    login

*** Test Cases ***
Invalid Login
    ${email}    Set Variable    test@example.com
    ${pwd}    Set Variable    test1234@
    Wait Until Login Page Loaded
    Login    ${email}    ${pwd}
    Wait Until Element Contains    css=[on=dual_auth] span.warning    The user or password is incorrect.

*** Keywords ***
Login
    [Arguments]    ${email}    ${pwd}
    Input Text    css=input#username    ${email}
    Input Text    css=input#password    ${pwd}
    Click Element    css=[name="loginForm"] button.button-login

Wait Until Login Page Loaded
    Wait Until Page Contains Element    css=div.login.fade_out