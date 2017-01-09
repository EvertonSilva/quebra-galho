class CreateFerramentas < ActiveRecord::Migration[5.0]
  def change
    create_table :ferramentas do |t|
      t.string :nome
      t.text :descricao
      t.boolean :disponibilidade
      t.references :categoria, foreign_key: true

      t.timestamps
    end
  end
end
