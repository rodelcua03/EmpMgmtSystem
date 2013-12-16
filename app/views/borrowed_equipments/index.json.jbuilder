json.array!(@borrowed_equipments) do |borrowed_equipment|
  json.extract! borrowed_equipment, :id, :equipment_id, :borrowedDate, :returnedDate
  json.url borrowed_equipment_url(borrowed_equipment, format: :json)
end
