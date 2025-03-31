require "rake"

task :insire_data do
    puts "Qual é o dado que quer colocar?"
    data = $stdin.gets.chomp

    File.open('data.txt','a') do |f|
        f.puts "#{data}"
    end
end