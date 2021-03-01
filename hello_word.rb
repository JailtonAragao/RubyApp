

nome = "Jailton"

#mensagem  = %Q(bem vindo #{nome})



p nome[0]
p nome[-1]
p nome[0,6]
p nome.chars
p nome.chars.length

puts "Cabecalho"

puts "-" * 10

puts "Texto de info"

numero = 42

puts "o numero e %05d" % numero ##Formator de numeor

mensagem = "        mensagem       "
puts mensagem
puts mensagem.strip ## Metodo strip limpa espaco em branco
 

# upcase / downcase / capitalizepara formatar caixa de caract

nome_minusculo = "cadu"
nome_maiusculo = "CADU"

puts nome_maiusculo
puts nome_minusculo
puts "-" * 10
puts nome_maiusculo.downcase
puts nome_minusculo.upcase
puts nome_minusculo.capitalize

## gsub trocra texto da variavel no puts

mensagem = "Ola nome"

puts mensagem
puts "-" * 10
puts mensagem.gsub("nome", "Jai")
puts "-" * 10
nomes = "cadu nome1 outro_nome".split
p nomes

## numero interger e float
puts "-" * 10
puts "numeros"
puts "-" * 10
puts 42
puts 42.42
puts 1500
puts 1500_30
puts 42.class
puts 42.42.class
puts "-" * 10
puts "Soma um inteiro com flutuante"
puts "-" * 10
soma = 5 + 3.5
puts soma
puts soma.class
p 5 + 2
puts "-" * 10
puts "Metodo send invoca outro objeto"
puts "-" * 10
p 5.send("+", 3)
p 5.object_id
p 5.class
puts "-" * 10
puts "numero par"
puts "-" * 10
p 10.even?
puts "-" * 10
puts "numero impar"
puts "-" * 10
p 10.odd?
puts "-" * 10
puts "Tudo e um metodo no ruby"
puts "-" * 10



