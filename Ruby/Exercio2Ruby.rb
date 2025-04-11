# Classe base
class Carro
    def descrever
      "Este é um carro genérico."
    end
  end
  
  # Subclasse CarroEsportivo
  class CarroEsportivo < Carro
    def descrever
      "Este é um carro esportivo, rápido e estiloso!"
    end
  end
  
  # Subclasse CarroSedan
  class CarroSedan < Carro
    def descrever
      "Este é um carro sedan, confortável e espaçoso."
    end
  end
  
  # Criando instâncias e chamando o método descrever
  carro_comum = Carro.new
  carro_esportivo = CarroEsportivo.new
  carro_sedan = CarroSedan.new
  
  puts carro_comum.descrever
  puts carro_esportivo.descrever
  puts carro_sedan.descrever
  