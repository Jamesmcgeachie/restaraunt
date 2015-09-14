class FixColumnName < ActiveRecord::Migration
  def change
  	rename_column :cuisine_types, :cuisine_type_id, :cuisine_spice_level
  end
end
