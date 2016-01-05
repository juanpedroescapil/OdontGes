json.array!(@sugerencia) do |sugerencium|
  json.extract! sugerencium, :id, :fecha, :date, :titulo, :detalle
  json.url sugerencium_url(sugerencium, format: :json)
end
