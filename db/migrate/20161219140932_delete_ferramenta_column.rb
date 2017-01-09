class DeleteFerramentaColumn < ActiveRecord::Migration[5.0]
  def change
    remove_column :ferramentas, :usuario_id_id
  end
end
