class AddDeleteCascadeToDishes < ActiveRecord::Migration[6.0]
  def change
    remove_foreign_key :dishes, :restaurants
    add_foreign_key :dishes, :restaurants, on_delete: :cascade
  end
end
