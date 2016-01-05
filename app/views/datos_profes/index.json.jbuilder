json.array!(@categoria) do |categorium|
  json.extract! categorium, :id, :title, :user_id
  json.url categorium_url(categorium, format: :json)
end
