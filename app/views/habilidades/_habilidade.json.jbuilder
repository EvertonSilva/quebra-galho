json.extract! habilidade, :id, :nome, :descricao, :categoria, :created_at, :updated_at
json.url habilidade_url(habilidade, format: :json)