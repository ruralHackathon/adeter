class CreatePuntos < ActiveRecord::Migration[5.2]
  def change
    create_table :puntos do |t|
      t.string :titulo
      t.string :subtitulo
      t.text :descripcion
      t.float :lat
      t.float :lon
      t.string :horario
      t.float :precio
      t.text :info
      t.string :video

      t.timestamps
    end
  end
end
