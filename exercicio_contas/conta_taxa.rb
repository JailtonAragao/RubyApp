# Criando mais uma classe conta com taxa, com a heranca conta bancaria, para herdar os mesmo comportamento. Sera definido uma taxa na transferencia. 
class ContaComTaxa < ContaBancaria
    TAXA = 2 #Quando uma variavel no ruby esta em letra maiuscula se torna uma constante.
          
    def transferir(conta_carne, valor)
        super # Chamando a classe base ContBanca
        #taxa_de_saque = 2# Criando uma variavel
        debitar(TAXA) 
        # 2 eh o Valor a ser descontado
        # Usado o metodo da super determina que a classe base se relacione conta bancaria
            
    end
end