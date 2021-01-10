*** Settings ***


Resource        ../components/components.robot

*** Keywords ***
Pesquisa Produto 
    Wait Until Element Is Visible       ${CampoInput}    timeout=2
    Click Element   ${CampoInput}
    Input Text  ${CampoInput}   ${ElementoPesquisa}
    Click Element   ${BotaoPesquisar}
    Wait Until Element Is Visible  document.getElementByClassName('ty-pict     cm-image')   timeout=2


Registrar Aplicacao
    Click Element    ${MyAccount}
    Click Element   ${BotaoRegistrar}
    Input Text      ${NameIinput}      ${name}
    Input Text      ${LastNameInput}       ${LastName}
    Input Text      ${PhoneInput}       ${Phone}
    Input Text      ${EmailInput}       ${email}
    Input Text      ${PasswordInput}        ${password}
    Input Text      ${ConfirmPasswordInput}     ${ConfirmPassword}
    Input Text      ${NascimentoInput}       ${Nascimento}
    Click Element   ${Check}
    Execute Javascript               document.getElementsByClassName("recaptcha-checkbox-border")[0].click()
    Click Element   ${BotaoRegister}
    Wait Until Element Is Visible  document.getElementByClassName('ty-mainbox-title') === 'Successfully registered' timeout=2


ComprarCamisa
    Registrar Aplicacao
    Click Element   ${Logo}
    Click Element   ${Camisa}
    Click Element   ${addCart}
    Click Element   ${Checkout}
    Wait Until Element Is Visible  document.getElementByClassName('litecheckout__page-title') timeout=2