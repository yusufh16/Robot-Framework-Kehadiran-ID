*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${kebijakan_privasi}    xpath=/html/body/div/footer/div[1]/div/div/div[2]/div/ul/li/a
${scroll_in}    window.scrollTo(0,500)
${perubahan_K_P}    xpath=//*[@id="headingTwo"]/h5/button
${informasi}    xpath=//*[@id="headingThree"]/h5/button
${hubungi_kami}    xpath=//*[@id="headingfour"]/h5/button
${penggunaan_informasi}
${cookies}
${keamanan_informasi}
${lod_data}
${akses_&_perubahan}
${pembaruan_aplikasi}    xpath=//*[@id="heading14"]/h5/button
${pihak_ketiga}


*** Keywords ***
Kebijakan Privasi
    Click Element    ${kebijakan_privasi}
    Sleep    5s
    Execute Javascript    ${scroll_in}
    Sleep    2s
    Click Button    ${pembaruan_aplikasi}
    Sleep    10s