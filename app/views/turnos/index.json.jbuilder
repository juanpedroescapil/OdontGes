json.array!(@compra_tarjes) do |compra_tarje|
  json.extract! compra_tarje, :id, :lugar, :date, :monto, :cantcuot, :detalle
  json.url compra_tarje_url(compra_tarje, format: :json)
end
