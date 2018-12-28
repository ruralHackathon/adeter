class CreatePromos < ActiveRecord::Migration[5.2]
  def change
    create_table :promos do |t|
      t.string :titulo
      t.text :texto
      t.datetime :validez

      t.timestamps
    end
  end
end
