class CreateDatosPacientes < ActiveRecord::Migration
  def change
    create_table :datos_pacientes do |t|
      t.string :ape_nom
      t.string :string
      t.string :domicilio
      t.string :telefono

      t.timestamps null: false
    end
  end
end
