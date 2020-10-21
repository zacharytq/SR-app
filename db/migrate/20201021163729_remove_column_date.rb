class RemoveColumnDate < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :date_started
  end
end
