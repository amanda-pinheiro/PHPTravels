# Testes da categoria vôo (BDD)
*** Settings ***
Resource        ../../resources/main.robot
Test Setup      Acessar o site e logar
Test Teardown   Fechar navegador

*** Test Cases ***
TC01 - Fazendo Cadastro e realizando busca de passagem de destinos dentro dos EUA na classe econômica 
   Dado que eu realizo uma busca de um vôo ida e volta
   E saindo de Los Angeles
   E indo para Nova York
   E saindo na data
   E voltando na data
   E selecionando um passageiro
   Quando eu clico em buscar
   Então a página de vôos disponíveis é exibida
