input = File.open('./q2/input_Q2.txt', 'r');

final_message = ''

n = input.gets.to_i
message = Array.new(n)

while line = input.gets
    input_line = line.split
    message[input_line[0].to_i - 1] = input_line[1]
end

for letter in message do
    final_message += letter
end

puts final_message 