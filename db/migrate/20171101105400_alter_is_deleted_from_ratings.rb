class AlterIsDeletedFromRatings < ActiveRecord::Migration[5.0]
  def change
  	change_column :ratings, :is_deleted, :boolean
  end
end
