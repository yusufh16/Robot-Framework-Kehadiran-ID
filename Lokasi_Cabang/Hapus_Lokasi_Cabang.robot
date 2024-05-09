*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${tombol_hapus_lokasi}    xpath=//*[@id="lokasi-table"]/tbody/tr[7]/td[5]/a[3]
#ganti expath dengan data lokasi cabang yang mau di hapus
${batal}    xpath=//*[@id="deleteBody"]/form/div[2]/button[1]
${YA_Hapus_Lokasi}    xpath=//*[@id="deleteBody"]/form/div[2]/button[2]


*** Keywords ***
Hapus Lokasi Cabang
    Click Element    ${tombol_hapus_lokasi}
    Sleep    2s
    Click Button   ${YA_Hapus_Lokasi}
    Sleep    2s