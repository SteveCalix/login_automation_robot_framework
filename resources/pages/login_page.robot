*** Settings ***
Library    SeleniumLibrary


*** Variables ***
# Locators for Page Objects on Login Page
${LoginPage}            https://practicetestautomation.com/practice-test-login/
${UsernameLogInField}   id:username
${PasswordLogInField}   id:password
${SubmitButton}         id:submit
${ErrorMessageLocator}      id:error
${IncorrectUsernameMessaage}    Your username is invalid!
${IncorrectPasswordMessaage}    Your password is invalid!

*** Keywords ***
Enter Username
    [Arguments]    ${USERNAME}
    input text     ${UsernameLogInField}    ${USERNAME}

Enter Password
    [Arguments]    ${PASSWORD}
    input password    ${PasswordLogInField}    ${PASSWORD}

Submit Credentials
    click button    ${SubmitButton}