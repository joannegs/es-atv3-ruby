class Animal

    attr_accessor :especie, :peso, :pais_origem

    def initialize(especie, peso, pais)
        @especie = especie
        @peso = peso
        @pais_origem = pais
    end
end