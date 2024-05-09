*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${tombol_hapus_jabatan}    xpath=//*[@id="jabatan-table"]/tbody/tr[3]/td[3]/a[2]
#ganti expath dengan data Jabatan yang mau di hapus
${batal}    xpath=//*[@id="deleteBody"]/form/div[2]/button[1]
${YA_Hapus_Jabatan}    xpath=//*[@id="deleteBody"]/form/div[2]/button[2]

*** Keywords ***
Hapus Jabatan
    Click Element    ${tombol_hapus_jabatan}
    Sleep    2s
    Click Button   ${YA_Hapus_Jabatan}
    Sleep    2s