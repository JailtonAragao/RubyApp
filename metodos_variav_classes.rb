## Metodo variavel de classe sao chamados na classe ao inves do metodo especifico ou objeto.
#Sao uteis quando tem uma funcao que nao dependente do estado do objct. Podendo contruir 

##   class Pessoa
#        def self.gerar
#           p "nova pessoa"
#        end 
##    end

## So vai fica disponivel para classe e nao para as instancias.


## Se define variavel de classe usando 2 @@
# class Pessoa
#    @@variavel_da_classe_pessoa

#   def self.valor_variavel ## tipo getter
#       @@variavel_da_classe_pessoa
#    end

#    def self.incrementar_valor_variavel
#        @@variavel_da_classe_pessoa += 1
#    end
# end

 # Esse metodos podem ser compartilhado como uma variavel global. Porem 'e pouco usado gerando valor indesejado.

 class Pessoa
    @@numero_de_pessoas = 0

    def self.gerar ## tipo getter
        @@numero_de_pessoas += 1
        puts "Vou fazer antes"
        Pessoa.new
    end

    def self.numero_de_pessoas
        @@numero_de_pessoas 
    end
 end

pessoa = Pessoa.gerar
pessoa = Pessoa.gerar
pessoa = Pessoa.gerar
pessoa = Pessoa.gerar

p Pessoa.numero_de_pessoas
