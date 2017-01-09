class AddDetailsToFerramentas < ActiveRecord::Migration[5.0]
  def change
    add_column :ferramentas, :modelo, :text
    add_column :ferramentas, :tempo_de_uso, :integer
    add_column :ferramentas, :marca, :text
  end
end
