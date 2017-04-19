# language: pt
# encoding: utf-8

Funcionalidade: Comparar valor do Dólar
  Eu como usuário
  Quero fazer uma busca pela Uol
  Para que eu possa acessar o site
  E comparar o valor do dolar

@consulta_valor_dolar
Cenário: Consultar valor do dolar
  Dado que eu acesse o site google
  E faça uma busca por "uol"
  Quando acessar a página de Economia
  Então o valor do dolár deve ser menor que 3,20
