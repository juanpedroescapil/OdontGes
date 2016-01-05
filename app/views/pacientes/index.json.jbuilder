json.array!(@pacientes) do |paciente|
  json.extract! paciente, :id, :apellido, :nombre, :tipo_doc, :num_doc, :fecha_nac, :obra_soc, :numero_afil, :grupo_sang, :direccion, :ciudad, :telefono, :email, :comentarios
  json.url paciente_url(paciente, format: :json)
end
