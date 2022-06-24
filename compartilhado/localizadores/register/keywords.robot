Documentation
... Suíte com palavras chave de register page do sistema

*** Keywords ***
E seleciono o genero
    Wait Until Element Is Visible       ${radio_gender}
    Click Element                ${radio_gender}

E preencho nome e sobrenome
    Input Text                   ${cmp_first_name}          Gabriel
    Input Text                   ${cmp_last_name}           Darbone

E preencho a senha
    Input Text                   ${cmp_psd_reg}             teste123

E seleciono a data do nascimento
    Select From List By Value    ${sel_day_reg}             13 
    Select From List By Value    ${sel_month_reg}           8 
    Select From List By Value    ${sel_year_reg}            1996

E preencho o nome e sobrenome adress
    Input Text                   ${cmp_address_first_name}         Gabriel
    Input Text                   ${cmp_address_last_name}    Darbone

E preencho o nome da empresa
    Input Text                   ${cmp_company}             teste

E preencho o endereco
    Input Text                   ${cmp_address}             teste

E preencho a cidade
    Input Text                   ${cmp_city}                teste

E seleciono o estado
    Select From List By Value    ${sel_state}               2

E preencho o cep             
    Input Text                   ${cmp_zip_code}            12345
    
E seleciono o pais
    Select From List By Value    ${sel_country}             21

E preencho o telefone residencial
    Input Text                   ${cmp_home_phone}          12912331233

E preencho o telefone celular
    Input Text                   ${cmp_mobile_phone}        12912331233

E clico no botao de registrar
    Click button                 ${btn_register}

Entao a conta deve ser registrada
    Title Should Be              My account - My Store
        

