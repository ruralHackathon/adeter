class AddUserForeignKeyToEmpresas < ActiveRecord::Migration[5.2]
  def change
    add_reference :empresas, :user, foreign_key: true
  end
end
