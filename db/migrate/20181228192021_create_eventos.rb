class CreateEventos < ActiveRecord::Migration[5.2]
  def change
    create_table :eventos do |t|
      t.string :titulo
      t.text :info
      t.datetime :fecha

      t.timestamps
    end
  end
end
