# Cliando a Classe contrutora usando o metod initialize para caregar os elementos de dados das variaveis os parametros.
# Essa classe vai auxiliar as variaveis contas que herdam os valores dos metodos
class ContaBancaria
    def initialize(proprietario, valor_inicial)
        @proprietario = proprietario
        @valor        = valor_inicial
        ## @valor eh uma variavel de instancia
    end
## Criado um metodo transferir que vai receber do main conta. o objeto transferir para inicializacao.
    def transferir(conta_carne, valor)
        ## Logica de transferencia de valor
        if saldo >= valor
            ## Se tem dimdim! OK Transferir!
            debitar(valor)# Criar o metodo debit
            conta_carne.depositar(valor)# Criar o metodo depositar
        else 
            # Senao / Nao fazer nada
            raise "Falah na transferencia, Saldo insificiente!"
            # O raise 'e um alerta de erro uma exception no ruby
            # So que lanca um RunTimeErro que faz o codigo parar e precisa ser tratado. 
        end    
    end
    ## Criado um metodo saldo que vai receber do metodo inicialize @valor e envia para o objeto no main saldo para ser impresso
    def saldo
        @valor ## Recebe valor_inicial
    
    end

    private 
    # Criar o metodo depositar debitar em privado para interegir com o metodo transferir
    def debitar(valor_para_debitar)
        @valor -= valor_para_debitar
        # Verificando a logica de operadores de #valor saldo com valor debito
        # A operacao acima foi fatorado, mas #pode ser entendito @valor = @valor - #valor
        #poderia usar self.valor informa direto objeto, mas nao esta instanciado
    end
    protected
    # O metodo depoisita tem que se chamado antes pelo protected. Lenvando em consideracao que a conta carne pertence a um outro objeto deferente da conta peixe mesmo estando na mesma classe e por esse motivo depositar tem que ser protected.
    def depositar(valor_para_depositar)
        @valor += valor_para_depositar
    end
end


