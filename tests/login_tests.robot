*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/pages/login_page.robot
Resource    ../resources/pages/login_success_page.robot
Variables    ../resources/test_data/login_data.py
Test Template    Test Login Page
Suite Setup
Suite Teardown      Close All Browsers

*** Test Cases ***
# Run the tests for the following browsers. Remove or add as needed.
Test Login Page
    chrome
    edge
    firefox

*** Keywords ***
Open Login Page
    [Arguments]    ${BROWSER}
    open browser    ${LoginPage}     ${BROWSER}


Valid Login
    Enter Username    ${Username}
    Enter Password    ${Password}
    Submit Credentials
    location should contain    ${LoginSuccessPartialURL}
    ${SuccessMessage}=    get text    ${LoginSuccessMessageLocator}

    FOR    ${message}    IN    @{LoginSuccessMesssages}
        should contain   ${SuccessMessage}    ${message}
    END

    wait until page contains element    ${LogOutButton}
    Click Log Out Button


Invalid User
    Enter Username    ${Invalid_Username}
    Enter Password    ${Password}
    Submit Credentials
    wait until page contains element    ${ErrorMessageLocator}
    wait until keyword succeeds    3x    5s
    ...    element text should be    ${ErrorMessageLocator}    ${IncorrectUsernameMessaage}


Invalid Password
    Enter Username    ${Username}
    Enter Password    ${Wrong_Password}
    Submit Credentials
    wait until page contains element    ${ErrorMessageLocator}
    wait until keyword succeeds    3x    5s
    ...    element text should be    ${ErrorMessageLocator}    ${IncorrectPasswordMessaage}


Test Login Page
    [Arguments]    ${BROWSER}
    Open Login Page    ${BROWSER}
    Valid Login
    Invalid User
    Invalid Password
    close browser

