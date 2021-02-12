class PlantTag < ApplicationRecord
  belongs_to :plant
  belongs_to :tag
  validates :plant, uniqueness: {scope: :tag, 
  message: "A plant can't have the same tag"}
end