Documentation
...Suíte com testes


*** Settings ***
Resource                  ../compartilhado/localizadores/main/keywords.robot
Resource                  ../compartilhado/localizadores/main/variables.robot
Resource                  ../compartilhado/localizadores/login/keywords.robot
Resource                  ../compartilhado/localizadores/login/variables.robot
Resource                  ../compartilhado/localizadores/product/keywords.robot
Resource                  ../compartilhado/localizadores/product/variables.robot
Resource                  ../compartilhado/localizadores/register/keywords.robot
Resource                  ../compartilhado/localizadores/register/variables.robot
Resource                  ../compartilhado/recursos/recursos_comuns.robot
Test Setup                Abrir navegador
Test Teardown             Fechar navegador

*** Test Case ***

Test Case 01: Adicionar Item ao carrinho e fazer checkout
    DADO que eu esteja no site
    QUANDO clico no vestido faded
    E adiciono o item ao carrinho
    E clicar em fazer o checkout
    ENTÃO validar valor total sem frete

Test Case 02: Login c sucesso - email invalido
    DADO que eu esteja no site
    E clico em sign in
    QUANDO preencho email invalido e senha valida
    E pressiono Submit
    ENTÃO deve ser exibido mensagem de email incorreto

Test Case 03: Login c sucesso - validacao generica
    DADO que eu esteja no site
    E clico em sign in
    QUANDO preencho email e senha com validos
    E pressiono Submit
    ENTÃO deve ser exibido mensagem de autenticacao falha

Test Case 04: Login c sucesso - email e senha invalidos
    DADO que eu esteja no site
    E clico em sign in
    Quando preencho email e senha invalidos
    E pressiono Submit
    ENTÃO deve ser exibido mensagem de email incorreto

Test Case 05: cadastro com sucesso
    DADO que eu esteja no site
    E clico em sign in
    Quando preencho email no campo de cadastro
    E clico em criar uma conta
    E seleciono o genero
    E preencho nome e sobrenome
    E preencho a senha
    E seleciono a data do nascimento
    E preencho o nome e sobrenome adress
    E preencho o nome da empresa
    E preencho o endereco
    E preencho a cidade
    E seleciono o estado
    E preencho o cep
    E seleciono o pais
    E preencho o telefone residencial
    E preencho o telefone celular
    E clico no botao de registrar
    Entao a conta deve ser registrada


