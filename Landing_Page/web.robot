*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url_login}    https://kehadiran.sekolahan.id

*** Keywords ***
Landing Page
    Open Browser    ${url_login}    Chrome
    Maximize Browser Window
    Sleep    2s