class SiteController < ApplicationController
  def index
    
    if ((!current_user.nil?))
      #@pacientes = current_user.tarjes
      #@compra_tarje = current_user.compra_tarjes
    else
      #@tarjes = " "
      #@compra_tarje = " "
    end  
  end
end