class CreateDocuments < ActiveRecord::Migration[6.0]
  def change
    create_table :documents do |t|
      t.integer :event_id
      t.integer :user_id
      t.string :title
      t.text :content
      t.string :security_clearance

      t.timestamps
    end
  end
end
