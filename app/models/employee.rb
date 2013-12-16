class Employee < ActiveRecord::Base
  belongs_to :borrowedEquipment
end
