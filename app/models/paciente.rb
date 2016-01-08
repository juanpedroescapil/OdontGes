class Paciente < ActiveRecord::Base
    has many :turnos
end
