require "sinatra"
require "json"

class MainApplication < Sinatra::Application
    post "/items" do
        {msg:"Item criado!"}.to_json
    end

    get "/items" do
        {msg:"Não há nenhum item!"}.to_json
    end

    get "/items/:id" do
        {msg:"Informação do item #{params['id']}"}.to_json
    end

    put "/items/:id" do
        {msg:"Item #{params['id']} foi atualizado!"}.to_json
    end

    delete "/items/:id" do
        {msg:"Item #{params['id']} foi deletado!"}.to_json
    end
end