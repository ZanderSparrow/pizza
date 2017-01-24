class AddColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :admin, :boolean, default: false
    add_column :users, :username, :string, default: "anonymous"
  end
end
