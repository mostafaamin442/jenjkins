*** Settings ***
Library    SeleniumLibrary    

*** Variables ***
${User_Name}            id:username
${Password_Field}       id:password
${Login_Button}         xpath://*[@id="login"]/button
${Response_message}     id:flash

*** Keywords ***
CheckLogin
    [Arguments]    ${name}    ${pass}    
    Input Text    ${User_Name}    ${name}
    Input Text    ${Password_Field}    ${pass}   
    Click Button    ${Login_Button}
            
  