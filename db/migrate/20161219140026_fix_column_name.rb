class FixColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :ferramentas, :user_id, :usuario_id
    add_reference :ferramentas, :usuario_id, references: :usuarios, index: true
  end
end
