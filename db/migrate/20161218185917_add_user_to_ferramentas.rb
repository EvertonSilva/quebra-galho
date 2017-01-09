class AddUserToFerramentas < ActiveRecord::Migration[5.0]
  def change
    add_reference :ferramentas, :user, foreign_key: true
  end
end
