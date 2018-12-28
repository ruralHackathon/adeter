class CreateEmpresas < ActiveRecord::Migration[5.2]
  def change
    create_table :empresas do |t|
      t.string :nombre
      t.text :historia
      t.string :resumen
      t.string :direccion
      t.string :web
      t.string :telefono
      t.string :email
      t.string :video
      t.string :horario
      t.float :lon
      t.float :lat

      t.timestamps
    end
  end
end
