class AddWebsiteToRestaurants < ActiveRecord::Migration
  def change
    add_column :restaurants, :website, :string
  end
end
