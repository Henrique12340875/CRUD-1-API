require "sequel"
require "fileutils"

project_root = File.expand_path(File.dirname(__FILE__))

db_path = File.join(project_root,'storage','db.sqlite3')

FileUtils.mkdir_p(File.dirname(db_path))

begin
    @DB = Sequel.sqlite(db_path)
    @DB.test_connection
    puts "Conectado ao banco de dados!"
rescue Sequel::DatabaseConnectionError => e
    puts "Erro:#{e.message}"
end


