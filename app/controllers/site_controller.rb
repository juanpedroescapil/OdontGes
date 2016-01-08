class SiteController < ApplicationController
  def index
    
    if ((!current_user.nil?))
      
      @turnos_user = Turno.find_by_id_user(current_user.id)
      @turnos_all = Turno.all
      #@pacientes = current_user.tarjes
      #@compra_tarje = current_user.compra_tarjes
    else
      #@tarjes = " "
      #@compra_tarje = " "
    end  
  end
end