class CreateDatosProfes < ActiveRecord::Migration
  def change
    create_table :datos_profes do |t|
      t.string :ape_nom
      t.string :telefono
      t.string :especialidad

      t.timestamps null: false
    end
  end
end
