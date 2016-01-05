class Turno < ActiveRecord::Base
    before_save :default_values
    
    belongs_to :user
    belongs_to :datos_paciente
    
    validates :date, presence: true
    
    def default_values
      if (self.cantcuot.nil?)
        self.cantcuot ||= 1
      end
    end  
    
   
    
end
