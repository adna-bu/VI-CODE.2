*** Settings ***
Documentation  Page Object in Robot Framework
Library  SeleniumLibrary
Variables  ../Resources/PageObject/Locators/Locators.py
Resource  ../Resources/PageObject/KeywordDefinitionFiles/LoginPage.robot
Resource  ../Resources/PageObject/KeywordDefinitionFiles/HomePage.robot
Resource  ../Resources/PageObject/KeywordDefinitionFiles/CommonFun.robot
Resource  ../Resources/PageObject/KeywordDefinitionFiles/AddEmployeeFormPage.robot

*** Variables ***
${site_url}  https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${browser}  Firefox

*** Test Cases ***
User Creation verification
    [Documentation]  Verification that the Admin can  sucessfully add an Employee
    Opening Browser  ${site_url}  ${browser}
    Input AUsername
    Input APassword
    Click Login
    Verify Welcome Text is Visible
    Click On Add Employee
    Input First Name
    Input Last Name
    Submit
    Logout

Error verification for empty First Name field
    [Documentation]  Verification that the Admin isn't able to add a new Employee without inserting the First Name
    Input AUsername
    Input APassword
    Click Login
    Verify Welcome Text is Visible
    Click On Add Employee
    Input Last Name
    Submit
    Verify Error Message is Visible
    Logout
    Close Browser


*** Keywords ***