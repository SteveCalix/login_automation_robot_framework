*** Settings ***
Library    SeleniumLibrary

*** Variables ***
# Login success partial URL
${LoginSuccessPartialURL}     practicetestautomation.com/logged-in-successfully/

# Login success message locator
${LoginSuccessMessageLocator}    css:.has-text-align-center > strong:nth-child(1)

#Login success partial messages
@{LoginSuccessMesssages}     Congratulations
...                          successfully logged in

#Log out button locator
${LogOutButton}    //div[@class='wp-block-group']/div/div/a

*** Keywords ***
Click Log Out Button
    click element    ${LogOutButton}

