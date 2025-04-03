require "sequel"

Sequel.migration do
    change do
        create_table :users do
            primary_key :id
            String :name, null: false,unique: true
            String :email, null: false
            String :password, null: false
            DateTime :created_at
        end
    end
end