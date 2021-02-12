class Garden < ApplicationRecord
  has_many :plants, dependent: :destroy
  has_many :plant_tags
  validates :name, presence: true
end
