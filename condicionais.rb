## Condicionais sao estruturas de controle usados para teste e verificacao.
## Exemplo-1   if [condicao] 
##               faca_algo
##             else
##               faca_outra_coisa
##             end    
## A condicao verifica se expressao validade ou nao a informacao com operadores relacionais

## A palavra reservada do codigo (if , elsif, else, and)
## if - se
## elsif - entao
## else - senao
## and - fim de condicional

################ OPERADORES RELACIONAIS ###########
                
                ## == igualdade
                ## != diferente
                ##  > maior que
                ##  < menor que
                ## >= maior ou igual
                ## <= menor ou igual

############### ESTRUTURA CONDICIONAL ################

              valor = 51
                if valor > 50
                    puts "Eu sou maior que 50"
                else 
                    puts "Eu sou menor que 50"
                end

################ OPERADORES LOGICOS ####

## !  Negacao  >> nega logica booleana true! == false

## && and / e  >> Peixe e Carne == true se ambas verdade

## || or / ou  >> Peixe ou Carne == true se uma verdade

############### ESTRUTURA CONDICIONAL LOGICA 1 ########

valor = 65 # > Variavel recebe valor
if valor >= 50 && valor <= 100 #> Dupla checagem logica 
    puts "Estrou entre 50 e 100."
end

############### ESTRUTURA CONDICIONAL LOGICA 2 #########

valor = 20 ### >>> Varialvel recebe 20
if valor > 50 # > Condicao verificar se eh true ou false
    puts "Eu sou maior que 50.." # > Se true impimir
elsif valor == 50 # > O segundo bloco faz a mesma verif
    puts "Sou igual a 50.."
else # > Else impimir caso a primeira condicao no valido
    puts "Eu sou menor que 50.."
end # > Finaliza o bloco 

#### APENAS nil e false sao avaliados como false no Ruby
### OS DEMAIS sao true aceitos no if

############### ESTRUTURA CONDICIONAL LOGICA 3 #######

valor = 65
puts "Eu sou maior que 50..." if valor > 50

## Outra estrutura alem do if, elsif e else eh o unless
## unless eh oposta ao if... Se nao for verdade ele exercuta o bloco. ou seja se a condicao for false unless exercuta para o if tem que ser true/verdade
## Nao eh indicado usar o else com o unless

#### ESTRUTURA CONDICIONAL LOGICA TERNARIA 4 #######
## A condicional ternaria simplifica a estrututa if else em uma linha.
## ? a interrogacao eh o if - se
## : dois pontos eh o else - senao


idade = 23
pessoa = (14...20).include?(idade) ? "adolescente" : "não é adolescente"
puts pessoa # => "não é adolescente"

####### ESTRUTURA CONDICIONAL CASE, WHEN, ELSE, END 5 #
## A estrutura case recebe a variavel que checa caso a caso nos blocos when onde o bloco for true encerra a busca em end

linguagem = "golang"#> Add valor a variavel

case linguagem #> Receebe a variavel 
    when "golang" #> No case para quando eh true
        puts "No eh Ruby"
    when "ruby"
        puts "Eh Ruby"
    else
        puts "No disponivel"
end

#### ESTRUTURA CONDICIONAL LOGICA TERNARIA 6 #######
p "Digite um valor....."
moeda = gets.chomp.to_i

if moeda > 20
    puts "Maior q 20"
elsif moeda == 20
    puts "Iguaal a 20"
else 
    puts "Menor que 20"
end 

######################################

if moeda >= 10 && moeda <= 20
    puts "Estou entre 10 e 20"
else
    puts "Nao estou entre 10 e 20"
end
   
######################################

unless moeda == 20 #> unless retorna quando cond false
    p "O valor nao eh 20"
end

######################################

p "MEnor q 20" if moeda < 20 