*** Settings ***
Library    SeleniumLibrary    

*** Variables ***
${FileUploadLink}    xpath://*[@id="content"]/ul/li[18]/a
${UploadButton}      id:file-upload
${SubmittButton}     id:file-submit
${ResponseMessage}   xpath://*[@id="content"]/div/h3


*** Keywords ***
UploadFile
    Scroll Element Into View    ${FileUploadLink}
    Click Element    ${FileUploadLink}
    Sleep    2s    
    Choose File    ${UploadButton}    ${EXECDIR}\\Data\\test.png
    Sleep    2s    
    Click Button    ${SubmittButton}    
    Sleep    2s