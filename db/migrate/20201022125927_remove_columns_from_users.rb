class RemoveColumnsFromUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :first_name
    remove_column :users, :last_name
    remove_column :users, :bio
    add_column :users, :name, :string
    add_column :users, :person_id, :integer
  end
end
