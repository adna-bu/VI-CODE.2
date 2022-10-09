*** Settings ***
Documentation  Page Object in Robot Framework
Library  SeleniumLibrary
Variables  ../Resources/PageObject/Locators/Locators.py
Resource  ../Resources/PageObject/KeywordDefinitionFiles/LoginPage.robot
Resource  ../Resources/PageObject/KeywordDefinitionFiles/HomePage.robot
Resource  ../Resources/PageObject/KeywordDefinitionFiles/CommonFun.robot

*** Variables ***
${site_url}  https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${browser}  Firefox

*** Test Cases ***
Login verification to OrangeHRM
    [Documentation]  Verification that the user is able to Login and Logout to OrangeHRM
    [tags]  Smoke
    Opening Browser  ${site_url}  ${browser}
    Input TUsername
    Input TPassword
    Click Login
    Verify Welcome Text is Visible
    Logout

Error verification for wrong LoginPasswordInputBox
    [Documentation]  Verification that the user isn't able to Login with a wrong Password
    [Tags]  Smoke
    Input TUsername
    Input WPassword
    Click Login
    Verify Error Text is Visible
    Close Browser

*** Keywords ***