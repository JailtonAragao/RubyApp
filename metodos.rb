## A criacao do metodo eh chamada com a palavra reservada 'def' ou definir, que criar um bloco no qual o metodo vai ser nomeado. neste caso o metod eh chamado de soma.
#  Para o soma eh atribuido 2 parametros cujos os valores estao fora do bloco apos end.
# Os valores podem ser add quando metodo soma eh chamado em alguma exercucao atribuindo valor aos parametros que fixara na memoria do sistema e assim exercutando o metodo.
# Para que o codigo funcione a quantidade de paramentros exigir que os valores sejam informados, ou ja atribuido na configuracao do paramentro do metodo.
# def soma(valor1, valor2)  atrinbuindo valor no parametro 'def soma(valor1, valor2 = 0)' tal acao e feita na possibilidade de nao existe um segundo ou mais valores. 

def soma(valor1, valor2)#> definir o metodo soma e parametros
    p "Estou somando #{valor1} e #{valor2}"
    return valor1 + valor2 #> retornando o metodo soma
end

p "Vou exercutar a soma"

p soma(10, 5) #> exercutando a chamda do metodo.