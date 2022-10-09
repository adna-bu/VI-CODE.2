*** Settings ***
Library  SeleniumLibrary
Variables  ../Locators/Locators.py
Variables  ../TestData/Testdata.py

*** Keywords ***
Click On Add Employee
    Click Element    ${AddEmployeeButton}
    Wait Until Element Is Visible    ${FirstNameInputBox}  timeout=1000
    
Input First Name
    Input Text    ${FirstNameInputBox}    ${FirstName}

Input Last Name
    Input Text  ${LastNameInputBox}  ${LastName}

Submit
    Click Element    ${SubmitButton}

Verify Error Message is Visible
    Element Should Be Visible  ${ErrorMessage}  timeout=1000
    