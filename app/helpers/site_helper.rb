module SiteHelper
    def calculate_tarje_cuot_rest(compra_tarje,date)
    	if date && !date.empty?
       compra_tarje.cantcuot - (((date.to_date.year - compra_tarje.date.year) * 12) + ( date.to_date.month - compra_tarje.date.month))
  			else
  		compra_tarje.cantcuot - (((DateTime.now.to_date.year - compra_tarje.date.year) * 12) + ( DateTime.now.to_date.month - compra_tarje.date.month))	
  			end     
    end   
end
