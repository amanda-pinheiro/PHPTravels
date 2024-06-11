# Contém as variáveis necessárias da página de registo (SignUp)
*** Settings ***
Resource    ../main.robot


*** Variables ***
&{registro}
...     Input_PrimeiroNome=//input[@id="firstname"]
...     Input_UltimoNome=//input[@id="last_name"]
...     Button_Pais=//*[@id="signup"]/div/div/div/div[3]/div[1]/div/div/button
...     Input_Pais=//*[@id="signup"]/div/div/div/div[3]/div[1]/div/div/div/div[1]/input
...     Button_EUA=//*[@id="bs-select-1-226"]/span
...     Input_Telefone=//input[@id="phone"]
...     Input_Email=//input[@id="user_email"]
...     Input_Senha=//input[@id="password"]
...     Button_Signup=//*[@id="signup"]/div/div/div/div[7]/div/div/div[1]
...     Button_Cookie=//*[@id="recaptcha-anchor"]/div[1]

*** Keywords ***
E realize o cadastro
    Click Element                      ${home.A_OpcaoAccount}
    Wait Until Element Is Visible      ${home.A_Signup}             30       
    Click Element                      ${home.A_Signup}
    Wait Until Element Is Visible      ${registro.Input_PrimeiroNome}  30
    Input Text                         ${registro.Input_PrimeiroNome}  ${dados_registro.PrimeiroNome}
    Wait Until Element Is Visible      ${registro.Input_UltimoNome}    30
    Input Text                         ${registro.Input_UltimoNome}    ${dados_registro.UltimoNome}
    Click Element                      ${registro.Button_Pais}
    Input Text                         ${registro.Input_Pais}          ${dados_registro.Pais}
    Wait Until Element is Visible      ${registro.Button_EUA}          10
    Click Element                      ${registro.Button_EUA}     
    Wait Until Element Is Visible      ${registro.Input_Telefone}      30
    Input Text                         ${registro.Input_Telefone}      ${dados_registro.Telefone}  
    Wait Until Element Is Visible      ${registro.Input_Email}         30
    Input Text                         ${registro.Input_Email}         ${dados_registro.Email}  
    Wait Until Element Is Visible      ${registro.Input_Senha}         30
    Input Text                         ${registro.Input_Senha}         ${dados_registro.Senha}          
    Wait Until Element Is Enabled     ${registro.Button_Signup}       90
    Run Keyword And Ignore Error      ${registro.Button_Signup}    
    Click Element                     ${registro.Button_Signup}