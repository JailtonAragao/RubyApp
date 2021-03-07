# principal
require "./exercicio_contas/conta_bancaria"
require "./exercicio_contas/conta_taxa"
## importanto a classe ContaBancaria no arquivo
## conta_bancaria.rb
## conta_taxa.rb
conta_peixe = ContaComTaxa.new("peixe", 100)#c 
conta_carne = ContaBancaria.new("carne", 200)#o
## Criado 2 variavel recebendo objetos com nome 
## e credito. As duas variavel importa da classe ContaBancaria em outro arquivo os metodos objetos e variaveis de instancia para serem processador cada variavel no mean busca metodos da Classe indexada instaciada como proprietarioe valor inicial.
# na conta peixe foi alterado a classe para fazer interacao com a classe Conta_Com_Taxa.

conta_peixe.transferir(conta_carne, 50)
## Tem que ser criado o metodo transferir na classe ContaBancaria para se inicializado. 
# Na conta peixe tem taxa de operacao

p "-" * 30
p "Conta Peixe"
p conta_peixe.saldo # dev imprimir 50 apos trans
p "-" * 30 # dev imprimir 48 - 2 apos trans e tx
p "Conta Peixe"
p conta_carne.saldo # imprimir 250 apos receber
p "Conta Peixe"
p "-" * 30
# Teste para conta sem saldo###
begin # na linha abaixo eh capturado o erro de exercucao vindo do ContaComTaxa
    conta_peixe.transferir(conta_carne, 60)# erro de exercuacao  
rescue StandardError => meu_erro # Em rescuir o erro eh isolado e informado uma mensagem
    p "Nao foi possivel transferir: #{meu_erro.message}" # depois da mensagem o codigo continua sem erro de exercucao.  
end

# Alinha de codigo vai fazer o teste logico considerando que 60 'e superior ao saldo de 50
## Fazendo uma simulacao de erro de exercucao na linha acima. Importante uqe esse erro veio de ContaComTaxa passou por ContaBancaria at'e ser ajustado na linha acima criando outro bloco de codigo para isolar o erro de exercucao.

p "Conta Peixe"
p conta_peixe.saldo # dev imprimir 50 apos trans
p "-" * 30
p "Conta Peixe"
p conta_carne.saldo # imprimir 250 apos receber
p "Conta Peixe"