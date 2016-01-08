json.array!(@turnos) do |turno|
  json.extract! turno, :id, :id_usuario, :id_paciente, :hora, :dia
  json.url turno_url(turno, format: :json)
end
