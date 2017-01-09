class CreateUsuarios < ActiveRecord::Migration[5.0]
  def change
    create_table :usuarios do |t|
      t.text :nome
      t.text :login
      t.text :email
      t.text :tel
      t.text :cep
      t.text :cidade
      t.text :pais

      t.timestamps
    end
  end
end
