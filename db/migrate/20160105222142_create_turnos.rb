class CreateTurnos < ActiveRecord::Migration
  def change
    create_table :turnos do |t|
      t.integer :id_paciente
      t.integer :id_user
      t.string :hora
      t.string :dia

      t.timestamps null: false
    end
  end
end
