input = File.open('./q4/input_Q4.txt', 'r')

pacientes = {}

max_timina = 0 # quantidade max de timina encontrada em um paciente
cod_max_timina = 0

while line = input.gets
    if line.to_i == 9999 
        break
    end

    paciente_dna = line.split

    pacientes[:"#{paciente_dna[0]}"] = paciente_dna[1]
end

pacientes.each do |codigo, dna|
    if dna.count('T') > max_timina 
        cod_max_timina = codigo
    end
end



puts cod_max_timina