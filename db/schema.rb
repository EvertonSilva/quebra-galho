# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20161219235215) do

  create_table "categorias", force: :cascade do |t|
    t.string   "nome"
    t.text     "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ferramentas", force: :cascade do |t|
    t.string   "nome"
    t.text     "descricao"
    t.boolean  "disponibilidade"
    t.integer  "categoria_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.text     "modelo"
    t.integer  "tempo_de_uso"
    t.text     "marca"
    t.integer  "usuario_id"
    t.index ["categoria_id"], name: "index_ferramentas_on_categoria_id"
    t.index ["usuario_id"], name: "index_ferramentas_on_usuario_id"
  end

  create_table "habilidades", force: :cascade do |t|
    t.string   "nome"
    t.text     "descricao"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.boolean  "disponibilidade"
    t.boolean  "possuo_ferramenta"
    t.decimal  "valor"
    t.integer  "usuario_id"
    t.index ["usuario_id"], name: "index_habilidades_on_usuario_id"
  end

  create_table "usuarios", force: :cascade do |t|
    t.text     "nome"
    t.text     "login"
    t.text     "email"
    t.text     "tel"
    t.text     "cep"
    t.text     "cidade"
    t.text     "pais"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
