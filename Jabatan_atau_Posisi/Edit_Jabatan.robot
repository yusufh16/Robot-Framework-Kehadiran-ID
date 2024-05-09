*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${edit_jabatan}    xpath=//*[@id="jabatan-table"]/tbody/tr[3]/td[3]/a[1]
#expath diganti ketika edit jabatan lain
${nama}    name=nama
${approval_edit}    xpath=/html/body/div[3]/div/div[2]/section/div/div/div/div[2]/div/form/div[2]/fieldset/div/div
${simpan_edit_jabatan}    xpath=/html/body/div[3]/div/div[2]/section/div/div/div/div[2]/div/form/div[3]/button

*** Keywords ***
Edit Jabatan
    Click Link    ${edit_jabatan}
    Sleep    2s
    Input Text    ${nama}   namaganti
    Sleep    1s
    Click Button    ${approval_edit}
    Sleep    2s
    Click Button    ${simpan_edit_jabatan}
    Sleep    3s
