*** Settings ***

Resource        ../pages/commons/hooks.pages.commons.robot
Resource        ../config/page_register.config.robot

Test Setup      Start Test
Test Teardown   Finish Test

*** Test Cases ***
Pesquisa Produto 
    Pesquisa Produto 

Registrar User
    Registrar Aplicacao

AddProduto
    ComprarCamisa