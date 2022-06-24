Documentation
... Suíte com palavras chave de login do sistema

*** Keywords ***
E clico em sign in
    Click Element            ${btn_login}

Quando preencho email invalido e senha valida
    #${numbers}=    Evaluate    random.randint(0, sys.maxsize)    random   
    Input Text               ${cmp_email}       adsfasdf
    Input Text               ${cmp_pass}        asdfasdf

E pressiono Submit
    Click Button             ${btn_submit_login}

Então deve ser exibido mensagem de email incorreto
    Element Text Should Be   ${msg_incorrect_email}        Invalid email address.

Então deve ser exibido mensagem de autenticacao falha
    Element Text Should Be   ${msg_auth_fail}        Authentication failed.

Quando preencho email e senha com validos
    Input Text               ${cmp_email}       asdfasdf@gmail.com
    Input Text               ${cmp_pass}        asdfasdf

Quando preencho email e senha invalidos
    Input Text               ${cmp_email}       asdfas;;;..!df
    Input Text               ${cmp_pass}        asdfasdf;x/z!çza~.,

Quando preencho email no campo de cadastro
    ${numbers}=    Evaluate    random.randint(0, sys.maxsize)    random   
  #  Input Text               ${cmp_email_reg}       ${numbers} + "@gmail.com"
    Input Text               ${cmp_email_reg}       ${numbers}@gmail.com
E clico em criar uma conta
    Click Button            ${btn_submit_create}





        

