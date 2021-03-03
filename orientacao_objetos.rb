## Classes e objetos
## Tudo em ruby 'e um objeto
## Classe eh como se fosse uma planta
## Objeto seria a contrucao que se chama de instancia

#Chamando classe
##          class NomeDaClasse
##          end
## Por padrao usa-se o camelo-case para nomea a class
## Observacao importante
## Quando se nomeia uma variavel no ruby
## cria um endereco de memoria que se renova toda vez que a variavel 'e chamada.
## So que o imutavel no ruby eh memoria id que o valor foi adcionado, sendo que o nome da variavel eh somente uma etiqueca de identificao.
## Ao declara uma varivel com valor 'e possivel declara uma outra variaval recebendo a variavel enterior declara incorporando o valor e id na memoria so que esse id agora tem duas etiquetas com nome de duas variavel.
p "-" * 30
p "Variavel dentro de variavel"
p "-" * 30

nome = "peixe"
p nome
p nome.object_id
p "-" * 30
outro_nome = nome
p outro_nome
p outro_nome.object_id
p "-" * 30
class MinhaClasse
end

objeto = MinhaClasse.new 

p objeto.object_id

###### Metodo e Variaveis ##########

## Define um metodo em conjunto com uma classe que vai troca de valor e variaveis caso necessario
## attr_accessor :nome # getter e setter
## attr_reader   :nome # apenas getter
## attr_writter  :nome # apenas setter

# @nome qualquer variavel que comeca com @ 'e chamada de instancia e somente os metodo da classe pode acessar.
# usando o metodo acessar.instance_variable_get(:@nome) 'e possivel acessar fora da classe, mas nao eh recomendado. 

## Observar que tem class no topo definir metodo e objetos para serem manipulados
# - Class >> Pessoa
# - Metodos >> Inicialize eh nativo do ruby, forca a inicializacao do bloco de codigo.
# - Metodos criados >> Imprimir ola e nome

# - Objetos criados >> peixe e carne

p "-" * 30
class Pessoa # Criando uma classe Pessoa
    def initialize(nome) #Define um construtor intializa com parametro nome.
      @nome = nome # @nome eh Variavel de instancia
    end
    
    def imprimir_ola #Definir metodo imprimir objeto pessoa.
        puts "Ola #{@nome}"

    end

    def nome=(novo_nome)#DEfinir metodo para receber novo valor na variavel nome
        @nome = novo_nome
    end
    # E possivel troca o metodo writer por uma unica linha de codigo.
    # attr_writter :nome vai funcionar do mesmo jeito
end

peixe = Pessoa.new("peixe")# criando objeto pessoa.
carne = Pessoa.new("carne")# criando 2 objeto pessoa.

p peixe
#<Pessoa:0x0000556bdca9ed48 @nome="peixe"> apos chamada de impressao retorna a variavel do objeto.
p carne
#<Pessoa:0x00005591ce761960 @nome="carne">
p "-" * 30
p "Exercutando objeto Pessoa pelo metodo" 
p "-" * 30

peixe.imprimir_ola ## Retorno do MEtodo
carne.imprimir_ola ## Retorno do MEtodo

p "-" * 30
p "Imprimi novo valor da variavel nome" 
p "-" * 30

carne = Pessoa.new("carne")# criando 2 objeto pessoa.
carne.nome = "frando" # Novo valor a variavel
carne.imprimir_ola # Retorna com o novo valor