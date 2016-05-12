class ChangeColumnName < ActiveRecord::Migration
  def change
	rename_column :items, :type, :style
  end
end
