class CreateHealthies < ActiveRecord::Migration[8.0]
  def change
    create_table :healthies do |t|
      t.string :titolo
      t.text :descrizione
      t.string :prezzo

      t.timestamps
    end
  end
end
