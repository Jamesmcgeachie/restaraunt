class RemoveCuisineTypeIdFromCuisineTypes < ActiveRecord::Migration
  def change
    remove_column :cuisine_types, :cuisine_type_id, :integer
  end
end
