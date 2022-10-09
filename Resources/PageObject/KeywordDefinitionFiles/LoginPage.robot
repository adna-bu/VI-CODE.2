*** Settings ***
Library  SeleniumLibrary
Variables  ../Locators/Locators.py
Variables  ../TestData/Testdata.py

*** Keywords ***
Input TUsername
    Input Text  ${LoginUsernameInputBox}  ${TUsername}

Input TPassword
    Input Text  ${LoginPasswordInputBox}  ${TPassword}

Input WPassword
    Input Text  ${LoginPasswordInputBox}  ${WPassword}

Input AUsername
    Input Text  ${LoginUsernameInputBox}  ${AUsername}

Input APassword
    Input Text  ${LoginPasswordInputBox}  ${APassword}

Click Login
    Click Element  ${LoginButton}