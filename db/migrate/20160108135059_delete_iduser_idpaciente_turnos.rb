class DeleteIdUserIdPacienteTurnos < ActiveRecord::Migration
  def change
    
        remove_column :turnos, :id_user
        remove_column :turnos, :id_paciente
        

  end
end