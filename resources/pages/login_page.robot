# Contém as variáveis necessárias da página de Login
*** Settings ***
Resource    ../main.robot


*** Variables ***
&{login}
...     Button_Account=//*[@id="navbarSupportedContent"]/div[2]/ul/li[3]/a
...     Button_Login=//*[@id="navbarSupportedContent"]/div[2]/ul/li[3]/ul/li[1]/a
...     Input_EmailLogin=//input[@id="email"]
...     Input_SenhaLogin=//input[@id="password"]
...     Button_Logar=//*[@id="submitBTN"]
...     A_OpcaoLogin=(//a[@href="https://www.phptravels.net/login"])[2]

*** Keywords ***
E faça o Login
    Click Element                       ${login.Button_Account}
    Wait Until Element is Visible       ${login.Button_Login}            30
    Click Element                       ${login.Button_Login}
    Wait Until Element Is Visible       ${login.Input_EmailLogin}        30
    Input Text                          ${login.Input_EmailLogin}        ${dados_registro.Email}
    Wait Until Element Is Visible       ${login.Input_SenhaLogin}        30
    Input Text                          ${login.Input_SenhaLogin}        ${dados_registro.Senha}
    Run Keyword And Ignore Error        ${login.Button_Logar}
    Wait Until Element Is Visible       ${login.Button_Logar}            30
    Run Keyword And Ignore Error        ${login.Button_Logar}
    Click Element                       ${login.Button_Logar}