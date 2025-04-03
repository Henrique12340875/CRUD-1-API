require "sequel"
require "fileutils"

project_root = File.expand_path(File.dirname(__FILE__))

db_path = File.join(project_root,'storage','db.sqlite3')

FileUtils.mkdir_p(File.dirname(db_path))

@DB = Sequel.sqlite(db_path)