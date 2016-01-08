class UpdateIduserIdpacienteTurnos < ActiveRecord::Migration
  def change
          add_column :turnos, :user_id, :integer, references: :users
          add_column :turnos, :paciente_id, :integer, references: :pacientes
      end
end