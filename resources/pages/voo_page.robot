# Contém as variáveis necessárias para pesquisa de vôo nos EUA
*** Settings ***
Resource        ../main.robot

*** Variables ***
&{Flights}
# Selecionando a página de vôo e viagem ida de volta
...     Button_Voo=//*[@id="navbarSupportedContent"]/div[1]/ul/li[1]/a
...     Button_IdaeVolta=//*[@id="round-trip"]
# Passo a passo de inserção dos dados do vôo de partida
...     Button_Ida=//*[@id="select2--container"]/div
...     Input_Ida=//*[@id="#fadein"]/span/span/span[1]/input
# Passo a passo inserção dos dados de volta
...     Button_Volta=//*[@id="onereturn"]/div[2]/div[2]/div[2]/span/span[1]/span/span[2]/b
...     Input_Volta=//*[@id="#fadein"]/span/span/span[1]/input
...     Button_NY=Button_NY=//*[@id="select2--results"]/li[contains(text(), "JFK")]
# Passo a passo inserção de datas
...	    Button_DataIda=//*[@id="departure"]
...     Button_DataVolta=//*[@id="return_date"]
# Seleciona 1 Passageiro
...     Button_Passageiro=//*[@id="onereturn"]/div[4]/div/div/div/a
# Pressiona ENTER para pesquisar a viagem
...     Button_Pesquisar=//button[@id="flights-search"]


*** Keywords ***
Dado que eu realizo uma busca de um vôo ida e volta
    Wait Until Element is Visible   ${Flights.Button_Voo}          10
    Click Element                   ${Flights.Button_Voo}
    Wait Until Element is Visible   ${Flights.Button_IdaeVolta}
    Click Element                   ${Flights.Button_IdaeVolta}

E saindo de Los Angeles
    Wait Until Element is Visible   ${Flights.Button_Ida}
    Click Element                   ${Flights.Button_Ida}
    Input Text                      ${Flights.Input_Ida}           ${voo_data.Ida}
    Press Keys                      ${Flights.Button_Ida}          ARROW_DOWN
    Press Keys                      ${Flights.Button_Ida}          ENTER
    Sleep                           1s

E indo para Nova York
    Wait Until Element is Visible   ${Flights.Button_Volta}
    Click Element                   ${Flights.Button_Volta}
    Input Text                      ${Flights.Input_Volta}         ${voo_data.Volta}
    Press Keys                      ${Flights.Button_Volta}        ARROW_DOWN
    Press Keys                      ${Flights.Button_Volta}        ENTER

E saindo na data
   Click Element                    ${Flights.Button_DataIda}
   Press Keys                       ${Flights.Button_DataIda}      CTRL+a
   Input Text                       ${Flights.Button_DataIda}      ${voo_data.Data_Ida}

E voltando na data
    Click Element                   ${Flights.Button_DataVolta}
    Press Keys                      ${Flights.Button_DataVolta}    CTRL+a
    Input Text                      ${Flights.Button_DataVolta}    ${voo_data.Data_Volta}

E selecionando um passageiro
    Click Element                   ${Flights.Button_Passageiro}

Quando eu clico em buscar
    Click Element                   ${Flights.Button_Pesquisar}