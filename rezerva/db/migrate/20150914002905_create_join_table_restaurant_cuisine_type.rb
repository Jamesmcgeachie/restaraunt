class CreateJoinTableRestaurantCuisineType < ActiveRecord::Migration
  def change
  	add_column :cuisine_types, :cuisine_type_id, :integer
    remove_column :restaurants, :cuisine_type_id, :integer
    create_join_table :restaurants, :cuisine_types do |t|
      # t.index [:restaurant_id, :cuisine_type_id]
      # t.index [:cuisine_type_id, :restaurant_id]
    end
  end
end
