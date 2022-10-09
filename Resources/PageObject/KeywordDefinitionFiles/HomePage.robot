*** Settings ***
Library  SeleniumLibrary
Variables  ../Locators/Locators.py
Variables  ../TestData/Testdata.py

*** Keywords ***
Verify Welcome Text is Visible
    Element Should Be Visible  ${WelcomeText}  timeout=1000
Verify Error Text is Visible
    Element Should Be Visible    ${ErrorText}  timeout=1000
Logout
    Click Element  ${WelcomeText}
    Wait Until Element Is Visible  ${LogoutButton}  timeout=1000
    Click Element  ${LogoutButton}
    Wait Until Element Is Visible  ${LoginUsernameInputBox}  timeout=1000
