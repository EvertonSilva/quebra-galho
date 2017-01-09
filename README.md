# Passo a passo para configurar a nossa aplicação :)

## Comandos para verificar a versão do rails e do ruby:
`ruby -v`

`rails -v`

## Internacionalização
Para usarmos o comando scaffold com os nomes dos módulos em português brasileiro
(siiim, é para lembrarmos que é "pt-BR"), precisamos configurar o rails para esse idioma.

Referência: [Link para o wordpress]:https://jorgevilaca.wordpress.com/2012/03/06/nacionalizando-rails-para-pt-br/

1. em config/application.rb, adicionar a seguinte linha:
```
config.i18n.default_locale = 'pt-BR'
```

2. adicionar o arquivo de tradução referente ao pt-BR:
Baixe o arquivo de: https://raw.githubusercontent.com/svenfuchs/rails-i18n/master/rails/locale/pt-BR.yml
E salve em config/locales como pt-BR.yml

3. adicione as regras para plural em pt-BR:
Baixe o arquivo de: https://gist.githubusercontent.com/mateusg/924574/raw/a357ddf228645c5e25cefd553ca60754f0efae0f/inflections.rb
Substitua o conteúdo de config/initializers/inflections.rb pelo conteúdo do arquivo baixado.

4. suba um terminal (`rails console` executado de dentro do diretório do projeto) e execute:
```
I18n.l Date.today, :format => :long
```
se aparecer em português => SUCESSO!


## Criando os módulos com o scaffold

1. Módulo categoria:
rails generate scaffold Categoria nome:string descricao:text

1. Módulo ferramenta:
rails generate scaffold Ferramenta nome:string descricao:text disponibilidade:boolean categoria:references

É necessário adicionar a referência `has_many: ferramentas` em categorias.

## Configurando o banco de dados
Para executar uma migração:
```
rails db:migrate
```

Para apagar o banco atual e executar todas as migrações novamente:
```
rake db:drop db:create db:migrate
```
