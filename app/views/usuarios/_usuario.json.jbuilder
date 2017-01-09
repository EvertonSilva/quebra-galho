json.extract! usuario, :id, :nome, :login, :email, :tel, :cep, :cidade, :pais, :created_at, :updated_at
json.url usuario_url(usuario, format: :json)