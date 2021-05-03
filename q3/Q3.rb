require_relative "Animal"

input = File.open('./q3/input_Q3.txt', 'r')

animais = [] 
entry = 'continuar'

while entry.casecmp?('continuar') 
    especie = input.gets.strip
    peso = input.gets
    pais = input.gets.strip
        
    animal = Animal.new("#{especie}", "#{peso.to_f}", "#{pais}")
    animais << animal

    entry = input.gets.strip
end

quantidade_macacos = animais.select{|animal| animal.especie.casecmp?('macaco')}.length

peso_media_tigres = animais.select{|animal| animal.especie.casecmp?('tigre')}

peso_media_tigres.length > 0 ? 
peso_media_tigres = (peso_media_tigres.map{|tigre| tigre.peso.to_f}.reduce(:+) / peso_media_tigres.length).ceil(2) : 
peso_media_tigres = "Não há tigres"

cobras = animais.select{|animal| animal.especie.casecmp?('cobra') && animal.pais_origem.casecmp?('venezuela')}.length



puts "#{quantidade_macacos}\n#{peso_media_tigres}\n#{cobras}"