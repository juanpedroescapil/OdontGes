json.array!(@tarjes) do |tarje|
  json.extract! tarje, :id, :nombre, :color, :banco
  json.url tarje_url(tarje, format: :json)
end
