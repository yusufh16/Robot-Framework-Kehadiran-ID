*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Tambah_Lokasi}    xpath=//*[@id="configuration"]/div/div/div/div[1]/div[2]/a
${Nama_Lokasi}    name=nama_lokasi
${Nomor_Telepon}    name=no_telp
${Jarak_Lokasi}    name=jarak
${latitude}    name=latitude
${longitude}    name=longitude
${simpan_tambah_lokasi}    xpath=/html/body/div[3]/div/div[2]/section/div/div/div/div[2]/div/form/div[6]/button

*** Keywords ***
Tambah Lokasi
    Click Element    ${Tambah_Lokasi}
    Sleep    2s
    Input Text    ${Nama_Lokasi}    contoh 3
    Sleep    1s
    Input Text    ${Nomor_Telepon}    0898989766465
    Sleep    1s
    Input Text    ${Jarak_Lokasi}    10000
    Sleep    1s
    Input Text    ${latitude}    -6.893344
    Sleep    1s
    Input Text    ${longitude}    107.54444
    Sleep    1s
    Click Button    ${simpan_tambah_lokasi}
    Sleep    10s

