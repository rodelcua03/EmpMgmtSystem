json.array!(@equipment) do |equipment|
  json.extract! equipment, :id, :name, :quantity, :description
  json.url equipment_url(equipment, format: :json)
end
