class FixHabilidadeColumnUserIdId < ActiveRecord::Migration[5.0]
  def change
    remove_column :habilidades, :usuario_id_id
  end
end
