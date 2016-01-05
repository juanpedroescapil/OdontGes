class DatosPaciente < ActiveRecord::Base
    has_many :turnos
end
