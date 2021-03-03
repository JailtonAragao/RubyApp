## Quando se colocar o sinal de interrogacao em um metodo a express~ao se torna uma pergunta que retorna verdadeiro / falso.

def palindromo?(palavra) #metod e parametor
    palavra = palavra.downcase# torna palavra em minuscula
    palavra_reversa = ""

    indice = palavra.length # repassa a palavra como lista

    until indice == 0# indicie inicia 0
    letra = palavra[indice - 1]#Variavel para lista
    palavra_reversa << letra  
    indice -= 1 #contador do indicie
    end

    if palavra_reversa == palavra
        return true
    else 
        return false
    end
end

puts palindromo?("ovo")
puts palindromo?("Ovo")
puts palindromo?("foo")


#######################################
#O rumy tem metodos que simplifica o codigo acima em apenas uma linha

def palindromo?(palavra)
    palavra.downcase == palavra.downcase.reverse
end

puts palindromo?("ovo")
puts palindromo?("Ovo")
puts palindromo?("foo")



palavra = "ruby"
indicie = palavra.length

until indicie == 0
    indicie -= 1
    next if indicie == 1
    print palavra[indicie]
end

g1 = 50
g2 = 30

p "ola. existe #{g1 + g2} cadatros"

l = "ruby"
l ||= ja
p l 

