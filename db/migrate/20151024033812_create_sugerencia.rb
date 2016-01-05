class CreateSugerencia < ActiveRecord::Migration
  def change
    create_table :sugerencia do |t|
      t.date :fecha
      t.string :titulo
      t.text :detalle

      t.timestamps null: false
    end
  end
end
