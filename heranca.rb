#Heranca 'e para reuso de funcionalidades

# Heranca eh quando uma classe herda metodos e objetos de outra classe.
# Classe Filha >> herda da classe base

# E so pode herda de uma classe

# class Base
# end

#####  Herda da Base

# class Filha < Base
#   end
# Sinal de menor < define heraca

# Se nao determina a classe o Ruby vai buscar da Nativo Object
# E quando chamar o metodo o Ruby vai procurar e se nao achar vai procura na Hieraquia das classes. Se encontra vai exercutar. 
## Pode chamar o metodo da super classe base.... 'super'

class Sensor# Classe base ou pai
    def instalar
        puts "Estou instalando o sensor"
    end

    def iniciar
        puts "Estou inicializando sensor"
    end

    def coletar_metricas
        # sensor normal
        puts "Estou coletando metricas"
        puts "Estou analizando metricas"
    end
end

## Classe Temp vai herda classe Sensor

class SensorTemperatura < Sensor# Classe filha
    def coletar_metricas
    #inicializar_componentes_temperatura
        p "Estou coletando metricas de temperatura"
        super# Chama a classe base ou pai
    end
end

p '-' * 50
p 'Dados da classe Sensor'
p '-' * 50
sensor = Sensor.new
sensor.instalar
sensor.iniciar
sensor.coletar_metricas

p '-' * 50
p 'Dados da heranca na classe SensorTemp'
p '-' * 50
sensor = SensorTemperatura.new
sensor.instalar
sensor.iniciar
sensor.coletar_metricas