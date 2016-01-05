module CompraTarjesHelper

    def calculate_tarje_cuot_rest(compra_tarje,date)
    	if date && !date.empty?
       compra_tarje.cantcuot - (((date.to_date.year - compra_tarje.date.year) * 12) + ( date.to_date.month - compra_tarje.date.month))
  			else
  		compra_tarje.cantcuot - (((DateTime.now.to_date.year - compra_tarje.date.year) * 12) + ( DateTime.now.to_date.month - compra_tarje.date.month))	
  			end     
    end    
    
    def calculate_monto_par(compra_tarje)
        (compra_tarje.monto / (compra_tarje.cantcuot))
    end    
    
    def valida_cuota(compra_tarje, date)
    	if date && !date.empty? 
        if date.to_date >= compra_tarje.date
        (compra_tarje.cantcuot - ((( date.to_date.year - compra_tarje.date.year) * 12) + (date.to_date.month - compra_tarje.date.month)) > 0)
      end
    else
      if DateTime.now.to_date >= compra_tarje.date
    	(compra_tarje.cantcuot - ((( DateTime.now.to_date.year - compra_tarje.date.year) * 12) + (DateTime.now.to_date.month - compra_tarje.date.month)) > 0)
    end
    end
    end
end


