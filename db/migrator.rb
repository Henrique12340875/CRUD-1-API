require "sequel"
require_relative "connect"

Sequel.extension :migration

Sequel::Migrator.run(@DB, File.expand_path("../db/migrations", __dir__))


