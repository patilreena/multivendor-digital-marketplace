class SetDefaultCommisionToProducts < ActiveRecord::Migration[5.0]
  def self.up
    change_column :products, :commision, :float, :default => 20.0
  end

  def self.down
    # You can't currently remove default values in Rails
    raise ActiveRecord::IrreversibleMigration, "Can't remove the default"
  end
end

