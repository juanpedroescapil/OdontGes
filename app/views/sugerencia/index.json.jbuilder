json.array!(@sugerencia) do |sugerencium|
  json.extract! sugerencium, :id, :fecha, :titulo, :detalle
  json.url sugerencium_url(sugerencium, format: :json)
end
