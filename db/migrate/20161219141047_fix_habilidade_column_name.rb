class FixHabilidadeColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :habilidades, :user_id, :usuario_id
    add_reference :habilidades, :usuario_id, references: :usuarios, index: true
  end
end
