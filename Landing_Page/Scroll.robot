*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${scroll}    window.scrollTo(0,3500)

*** Keywords ***
scroll
    Execute Javascript    ${scroll}
    Sleep    5s
