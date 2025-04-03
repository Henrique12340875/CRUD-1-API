# frozen_string_literal: true

require 'rake'

task :insire_data do
  puts 'Qual é o dado que quer colocar?'
  data = $stdin.gets.chomp

  File.open('data.txt', 'a') do |f|
    f.puts data.to_s
  end
end

task :run do
  exec("rackup -p 3000")
end

namespace "db" do
  task :migrate do
    exec("ruby db/migrator.rb")
  end

  task :create do
    exec("mkdir db/storage && ruby db/connect.rb")
  end
end