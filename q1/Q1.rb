require_relative "Time"

File.open('./q1/input_Q1.txt', 'r') do |i|
    while line = i.gets 
        begin
            Time.parse("#{line}").humanize     
        rescue Exception => e
            puts 'Invalid time format'
        end
    end
end