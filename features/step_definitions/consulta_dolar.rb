
Dado(/^que eu acesse o site google$/) do
  visit "http://www.google.com.br"
end

Dado(/^faça uma busca por "([^"]*)"$/) do |uol|
  fill_in 'lst-ib', :with => uol
  find(:id, '_fZl').click
  click_link 'UOL - O melhor conteúdo'
  sleep 1
end

Quando(/^acessar a página de Economia$/) do
  click_link 'Economia'
  sleep 1
end

Então(/^o valor do dolár deve ser menor que "([^"]*)"$/) do |arg1|
 find(:xpath, "//*[@id='cambio']/ul/li[1]/p[1]/a").click
 dolar = find(:xpath, "//*[@id='conteudo-principal']/div[1]/div/div[2]/div[1]/table/tbody/tr/td[2]").text
 dolar = dolar.to_f
 if dolar >= 3.2
   fail"Valor do dolar maior do que R$ 3,20"
 end


end
