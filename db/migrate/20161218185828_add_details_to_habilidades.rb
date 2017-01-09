class AddDetailsToHabilidades < ActiveRecord::Migration[5.0]
  def change
    add_column :habilidades, :disponibilidade, :boolean
    add_column :habilidades, :possuo_ferramenta, :boolean
    add_column :habilidades, :valor, :decimal
    add_reference :habilidades, :user, foreign_key: true
  end
end
