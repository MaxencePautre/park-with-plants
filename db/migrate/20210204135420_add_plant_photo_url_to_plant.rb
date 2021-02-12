class AddPlantPhotoUrlToPlant < ActiveRecord::Migration[6.0]
  def change
    add_column :plants, :photo_url, :string
  end
end
