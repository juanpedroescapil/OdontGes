class Turno < ActiveRecord::Base
    
    
    belongs_to :user
    belongs_to :paciente
    
    #validates :date, presence: true
    
    
end
