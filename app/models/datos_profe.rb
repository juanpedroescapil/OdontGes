class DatosPaciente < ActiveRecord::Base
    has_many :turnos
    belongs_to :user
end
