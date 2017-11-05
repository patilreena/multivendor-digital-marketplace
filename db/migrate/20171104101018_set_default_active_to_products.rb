class SetDefaultActiveToProducts < ActiveRecord::Migration[5.0]
  def change
	  def self.up
	    change_column :product, :is_active, :type, :default => true
	  end

	  def self.down
	    # You can't currently remove default values in Rails
	    raise ActiveRecord::IrreversibleMigration, "Can't remove the default"
	  end
  end
end
