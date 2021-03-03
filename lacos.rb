## No while o codigo vai repetir at'e atigir o valor relacional que no caso eh zero. A variavel valor esta imprementa a subtrair a cada repticao valor = valor -1
p '-' * 20
p 'while'
p '-' * 20
valor = 5 #> Variavel recebe valor 5
while valor > 0 #> Repete ate Zero e depois pare
    p valor #> Print o valor a cada repeticao
    valor = valor - 1 #> Decrementa o valor
    
end #> Fim

######################################
## No for vai definir o nome da variavel que vai receber um valor por vez de um objeto ou lista >> vai repetir na variavel determina apos o for que neste bloco eh i, depois de repetir cada valor dentro do objeto ate ultimo e parar
p '-' * 20
p 'for'
p '-' * 20
for i in [1, 2, 3, 4, 5] #Para cada item da lista em i
    p "O numero eh #{i}"#Imprimir variavel i ate o ultimo item da lista. 
end

######################################
## O until 'e semelhante ao while, mas so vai exercutar se a condicao for false
p '-' * 20
p 'until'
p '-' * 20
valor = 0
until valor == 10#> Faca ate a condicao true 
    p valor
    valor += 1#> Como o valor inicial eh zero, vai retorna false ate ser igual a 10 e parar
end

### Comandos da estrutura de lacos

# break  == sair do laco
# return == sair do laco e do metodo contido
# next   == vai para a proxima interacao
# redo   == repete o laco do inicio -- condicional nao sera revista
p '-' * 20
p 'while/break'
p '-' * 20

valor = 0 #> Variavel recebe valor
while (valor < 10) #> Repete menor que 10
    p "O valor eh #{valor}"#> Print valor
    break if valor == 5 #> pare quaando chegar em 5

    valor = valor + 1#> Acrecente mais 1 a valor
    
end#> Fim

p '-' * 20
p 'for/range'
p '-' * 20

range = 0...5

for meu_valor in 0..5 #range #[1, 2, 3, 4, 5] posibili
    p "Meu valor eh #{meu_valor}"
end

p '-' * 20
p 'Metodo each para substituir o for'
p '-' * 20
## O metodo each 'e usado no ruby em sibstituicao do metodo for.
lista = [1, 2, 3, 4, 5]

lista.each do |meu_valor|#> USando o metodo each no for
    p "Meu valor (usando each) eh #{meu_valor}"
end

p '-' * 20
p 'Metodo each com hash'
p '-' * 20

hash = {nome: "peixe", idade: 20}

hash.each do |chave, valor|
    p "Minha chave #{chave} com valor #{valor}"
end
