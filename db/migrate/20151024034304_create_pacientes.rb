class CreatePacientes < ActiveRecord::Migration
  def change
    create_table :pacientes do |t|
      t.string :apellido
      t.string :nombre
      t.string :tipo_doc
      t.string :num_doc
      t.date :fecha_nac
      t.string :obra_soc
      t.string :numero_afil
      t.string :grupo_sang
      t.string :direccion
      t.string :ciudad
      t.string :telefono
      t.string :email
      t.text :comentarios

      t.timestamps null: false
    end
  end
end
