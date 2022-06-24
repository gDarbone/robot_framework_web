Documentation
... Suíte com palavras chave de product page do sistema

*** Keywords ***
E adiciono o item ao carrinho
    Click Button        ${btn_add_to_cart}

E clicar em fazer o checkout
    Wait Until Element Is Visible       ${btn_proceed_checkout}     
    Click Element        ${btn_proceed_checkout}

Então validar valor total sem frete
    Element Text Should Be      ${cmp_total}        $16.51
