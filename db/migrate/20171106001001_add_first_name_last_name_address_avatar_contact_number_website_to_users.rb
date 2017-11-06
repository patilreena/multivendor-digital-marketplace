class AddFirstNameLastNameAddressAvatarContactNumberWebsiteToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :address, :string
    add_column :users, :avatar, :text
    add_column :users, :contact_number, :integer
    add_column :users, :website, :text
  end
end
