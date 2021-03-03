# Variavel condicional serve para atribuicao a uma variavel sem valor inserido vazia. nil em ruby eh nulo.


#Metodo para chegar a variavel nula
var = nil
var1 = 11
var = "Vazio, Nulo" if var.nil?
p var
var1 = "Vazio, Nulo" if var1.nil?
p var1
# Pode ser feito com unless
var = nil
var1 = 11
var = "Vazio, Nulo" unless var
p var
var1 = "Vazio, Nulo" unless var1
p var1
# Atribuidor condicional da variavel
# so funciona se variavel tiver o velor nulo ou false
# teste com variavel valor
variavel = 10
p variavel
variavel ||= 20
p variavel
#teste com variavel nulo
variavel_cond = nil
p variavel_cond
variavel_cond ||= 10
p variavel_cond