## A criacao de sibolos
## Tudo no Ruby eh um Objto. Uma string eh imutavel
## Toda vez que a string for chamada vai consumir um 
## espaco de memoria com id object diferente.
## No Ruby existe os simbolos representado por dois pontos  ">> : <<" que vai reusar o mesmo objeto na memoria indenpendente das vezes chamada.
## Eh usado para otimizar a memoria quando a mesma string eh chamada varias vezes. 
 



## Variavel
puts "-" * 10
puts "Variavel/ object id gerado"
puts "-" * 10
nome = "Peixe"
puts nome
puts nome.object_id  ## Gerou id objeto na memoria
nome = "Peixe"
puts nome.object_id ## Gerou id objct na memoria
puts "-" * 10
puts "Simbolos/ >> : << / object id gerado"
puts "-" * 10
## Simbolo
:Peixe 
puts :Peixe
puts :Peixe.object_id
puts :Peixe.object_id

## Arrays sao listas de valor separado por virgulas
## No Ruby uma array pode conter tipos dados diferentes.
## Podendo ser chamadas ">> [] ou Array.new <<" como lista = [] ou lista = Array.new
puts "-" * 10
puts "Arrays / >> [] ou Array.new << / Lista de dados"
puts "-" * 10
puts "-" * 10
puts "Para incluir novo elemento na lista-- "
puts "lista << ou lista. append "
puts "-" * 10
puts "Para verificar o tamanho da Array "
puts "lista.length "
puts "-" * 10
puts "Para verificar se Array esta vazio "
puts "lista.empty? "
puts "-" * 10
puts "Para pegar o primeiro valor "
puts "lista.first "
puts "-" * 10
puts "Para pegar o primeiro valor "
puts "lista.last "
puts "-" * 10
puts "Chamando na pratica uma Array "

lista = []
puts lista.object_id
puts lista.class
puts lista.length
lista << 45
puts lista
puts lista.length
lista << 55
puts lista.length
lista << "string"
puts lista
lista.append true
puts lista
puts lista.length
puts lista.first
puts lista.last
puts lista.empty?
puts "-" * 10
puts "Para Soma lista no Ruby numa operacao normal "
puts "-" * 10

lista_1 = [1, 2, 3]
puts "Lista 1" 
puts lista_1
puts "-" * 10 

lista_2 = [4, 5, 6]
puts "Lista 2" 
puts lista_2
puts "-" * 10
puts "Soma Lista" 
soma_listas = lista_1 + lista_2
puts soma_listas
puts "-" * 10

## Hash eh uma estrutura de chave e valor tambem chmado de hashmap. Diferente do Array que indexa seus valolores por posicao que tem 0, 1, 2, Hash cada valor 'e identificado por object_id na memoria uma chave de acesso, sendo mais rapido que o array que tem que percorrer toda a lista indexada.
## Para inicializar uma hash a chamada eh 
## ">> hash = { } ou hash = Hash.new <<"
##    hash = {
##      chave => valor,
##      chave => valor,    
##    } 
## Usando String na hash nao eh indicado 
## Exemplo_1 h = {"nome" => "peixe", idade => 29 }
## Usando Simbolos indicado pq nao gera ou id na memoria
## Exemplo_2 h = {:nome => "peixe", :idade => 29}
## O Ruby pode simplificar essa chamada a deixando mais limpa e intuitiva usando o simbolo
## Exemplo_3 h = { nome: "Cadu", idade: 29 }
## Para acessar uma hash >>> h[:nome]
## Para alterar o elemento na hash >> h[:nome] = "Novo"
## Para retorna um array com as chaves >> hash.keys
## Para retorna um array com os valores >> hash.values
## Para verifica se a hash esta vazio hash.empty?


puts "Criando uma Hash" 
puts "-" * 10
h = {}
puts "Exibindo Classe" 
puts h.class
puts "-" * 10
puts "Retornando chave == Vazio" 
puts h.keys
puts "-" * 10
puts "Retornando Valor == Vazio" 
puts h.values
puts "-" * 10
puts "Adcionando valor a chave" 
h [:nome] = "Peixe"
puts h 
h [:idade] = 29
puts h 
puts "-" * 10
puts "Retornando chave " 
puts h.keys
puts "-" * 10
puts "Retornando Valor " 
puts h.values
puts "-" * 10
puts "Retornando chave individual " 
puts h[:nome]
puts h[:idade]
puts "-" * 10

