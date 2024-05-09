*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${edit_lokasi}    xpath=/html/body/div[3]/div/div[2]/section/div/div/div/div[2]/div/div[1]/div[2]/div/table/tbody/tr[3]/td[5]/a[2]
#ganti expath dengan data lokasi cabang yang mau di edit
${nama_lokasiedit}    name=nama_lokasi
${nomor_teleponedit}    name=no_telp
${jarak_lokasiedit}    name=jarak
${latitude_edit}    name=latitude
${longitude_edit}    name=longitude
${simpan_edit_lokasi}    xpath=/html/body/div[3]/div/div[2]/section/div/div/div/div[2]/div/form/div[6]/button

*** Keywords ***
Edit Lokasi
    Click Link    ${edit_lokasi}
    Input Text    ${nama_lokasiedit}    bandung
    Sleep    1s
    Input Text    ${nomor_teleponedit}    0888888
    Sleep    1s
    Input Text    ${jarak_lokasiedit}    1000000
    Sleep    1s
    Input Text    ${latitude_edit}    -6.902027354375383
    Sleep    1s
    Input Text    ${longitude_edit}    107.56965248376463
    Sleep    1s
    Click Button  ${simpan_edit_lokasi}
    Sleep    5s