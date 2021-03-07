## A visibilidade do metodo eh controlado pela palavra reservada private. Quando estanciada no bloca da classe, esses metodos abaixo de private deixam de ser publicos e somente sao acessados pela classe no qual esta inserida. Mas pode ser herdado em uma subcasse que adciona a classe pai e o metodo cliado.

# - public >> pode ser acessado em qualquer metdo ou objeto
# - private >> So podem ser chamados dentro de sua propria instancia. N~ao eh possivel acessar metodos privados em outra instancia ou objeto.
# - protected - podem ser chamados por qualquer instancia se for da mesma classe/subclasse.

##############CODIGO###############
#class MinhaClasse
#    def m1
#        p "Metodo 1"
#        p "Metodo 2"
#        p "Metodo 3"
#    end
#end
###>>> Codigo acima um metodo da classe chama todos os metodos privados abaixo
class MinhaClasse
    def m1
        p "Metodo 1"
        m2
        m3
    end
## >> Codigo acima o o m1 nao eh privado os metodos abaixo sao privado e retorna erro no m2 
 

    private ## Vai retorna erro no m2 >> pq abaixo tudo 'e protected.
    def m2
#  private def m2 ## chamar private in line com def.
        p "Metodo 2"
    end

    def m3
        p "Metodo 3 private"
    end
protected ## Nao pode chamar in line e abaixo tudo 'e protected
    def m5
        p "Metodo 5 protected"
    end
end

class MinhaSubClasse < MinhaClasse
    def m4 ## Obj da subclasse.
        m3 # chamando metodo privado compartilhado no objeto MinhaSubClasse.new
        outro_obj = MinhaClasse.new
        p "Metodo 4"
        outro_obj.m5 ## Pode ser chamdo de outro objeto por causa do protected.
    end
end
####### contexto no codigo #####

objt = MinhaSubClasse.new ## O ruby permite
objt.m4 # chamae objeto privado desde que faca parte do mesmo objeto de memoria
# objt.m5 # nao vai funcionar pq nao pertence a estrutura de classe, porem poder contornado usando o metodo send. 


