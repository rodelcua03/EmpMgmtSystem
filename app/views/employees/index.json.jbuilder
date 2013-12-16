json.array!(@employees) do |employee|
  json.extract! employee, :id, :name, :dateHired, :borrowedEquipment_id, :birthday, :age, :salary
  json.url employee_url(employee, format: :json)
end
