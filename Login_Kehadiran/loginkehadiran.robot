*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${login}    xpath=//*[@id="navbarSupportedContent"]/a[2]
${username}    id=username
${password}    id=password
${masuk}    xpath=/html/body/div[2]/div/div[2]/div/div/div/div[2]/div[1]/form/button
${capcha}    xpath=//*[@id="recaptcha-anchor"]

*** Keywords ***
login kehadiran
    Click Link    ${login}
    Sleep    5s
    Input Text    ${username}    pembayaran
    Sleep    5s
    Input Password    ${password}    admin123
    Sleep    5s
    Click Element    ${masuk}
    Sleep    2s