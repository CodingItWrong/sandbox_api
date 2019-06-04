class AddRatingToDishes < ActiveRecord::Migration[5.2]
  def change
    add_column :dishes, :rating, :integer
  end
end
