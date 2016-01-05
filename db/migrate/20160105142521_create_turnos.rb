class CreateTurnos < ActiveRecord::Migration
  def change
    create_table :turnos do |t|
      t.integer :id_paciente
      t.integer :id_profe
      t.string :date
      t.string :hora

      t.timestamps null: false
    end
  end
end
