*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${PageLink}     xpath://*[@id="content"]/ul/li[22]/a
${FrameLink}    xpath://*[@id="content"]/div/ul/li[2]/a
${iframe}       id:mce_0_ifr
${body}         id:tinymce


*** Keywords ***
OpenFramePage
    Scroll Element Into View    ${PageLink}
    Sleep    2s
    Click Element    ${PageLink}
    Sleep    2s
    Click Element    ${FrameLink} 
    Sleep    2s
    Select Frame    ${iframe}
    Sleep    2s
    Clear Element Text    ${body}
    Sleep    2s
    Input Text    ${body}    Hello
    Sleep    2s   