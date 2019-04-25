*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Registration Testing
    Open Browser  https://i5k.nal.usda.gov/register/project-dataset/account  headlesschrome
    Wait and Input  xpath=//*[@id='edit-name']  Test_Robot
    Wait and Input  xpath=//*[@id='edit-email']  monica.poelchau@ars.usda.gov
    Wait and Input  xpath=//*[@id='edit-affiliation']  Test_Robot
    Wait and Input  xpath=//*[@id='edit-content']  Automated Testing
    [Teardown]    Close All Browsers

Contact Testing
    Open Browser  https://i5k.nal.usda.gov/contact  headlesschrome
    Wait and Input  xpath=//*[@id='edit-name']  Test_Robot
    Wait and Input  xpath=//*[@id='edit-mail']  monica.poelchau@ars.usda.gov
    Wait and Input  xpath=//*[@id='edit-subject']  Test_Robot
    Wait and Input  xpath=//*[@id='edit-message']  Automated Testing
    [Teardown]    Close All Browsers

*** Keywords ***
Wait and Input 
    [Arguments]  ${locator}  ${text}
    Wait Until Element is Visible  ${locator}
    Input Text  ${locator}  ${text}

