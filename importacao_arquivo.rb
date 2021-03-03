# Para importa as classes que foram definidas em outros arquivos. Usa-se o require seguido do enderoco dos arquivos com as classes para serem importadas.
# Tambem serve para importa dependncias externas com bibliotecas importadas.
# As sao instaladas chamando gen install
require "./classes/pessoa"
require "./classes/carro"
require "awesome_print"

puts "Estou exercutando o codigo"

foo = Pessoa.new("Foo")
carro = Carro.new("modelo", "foo")

ap foo 
ap carro
