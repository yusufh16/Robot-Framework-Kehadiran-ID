*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${tambah_jabatan}    xpath=//*[@id="configuration"]/div/div/div/div[1]/div[2]/a
${nama}    name=nama
${approve_tambah}    xpath=/html/body/div[3]/div/div[2]/section/div/div/div/div[2]/div/form/div[2]/fieldset/div
#jika jabatan dapat meng-approve
${simpan_tambah_jabatan}    xpath=/html/body/div[3]/div/div[2]/section/div/div/div/div[2]/div/form/div[3]/button

*** Keywords ***
Tambah Jabatan
    Click Link    ${tambah_jabatan}
    Sleep    3s
    Input Text    ${nama}    Contoh1
    Sleep    2s
    Click Element    ${approve_tambah}
    Sleep    2s
    Click Button    ${simpan_tambah_jabatan}
    Sleep    7s