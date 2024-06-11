# Contém as variáveis da página do resultado de busca por vôo
*** Settings ***
Resource        ../main.robot

*** Variables ***
&{voo_resultado}
# Página de vôos disponíveis
...     url_Vôos=https://www.phptravels.net/flights/whp/jfk/return/economy/15-06-2024/21-06-2024/1/0/0


*** Keywords ***
Então a página de vôos disponíveis é exibida
    Wait Until Location Is           ${voo_resultado.url_Vôos}           30
