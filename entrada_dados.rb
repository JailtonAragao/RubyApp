## Entrada de dados com o metodo >> gets() ou gets <<
## Possibilida entrada de dados pelo usuario pelo
## Prompt ex: nome = gets, o ruby suspende o processamento ate a entrada de dados.
## o metodo formal eh nome = gets(), mas o ruby deixa ser nome = gets

## Apos entrada de dados em nome = gets, ao chama a variavel nome no terminal vai aparecer "peixe\n", por causa do enter do teclado
## Para retirar pode ser usado nome = gets.chomp e vai retorna sem o \n 
## Endereco pra teste do programa
## ruby "/home/jai/GitHub/RubyApp/entrada_dados.rb"

puts "Digite seu nome"

nome = gets.chomp

puts "Seu nome eh #{nome}"