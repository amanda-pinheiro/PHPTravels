*** Settings ***
Resource        ../main.robot

*** Variables ***
&{home}
...     A_OpcaoAccount=//*[@id="navbarSupportedContent"]/div[2]/ul/li[3]/a
...     A_Signup=//a[@href="https://www.phptravels.net/signup"]

*** Keywords ***
Dado que eu acesse o php travels
    Open Browser                     ${geral.URL}  ${geral.Browser}
    Maximize Browser Window