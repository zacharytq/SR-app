class CreateNotes < ActiveRecord::Migration[6.0]
  def change
    create_table :notes do |t|
      t.integer :user_id
      t.integer :document_id
      t.string :title
      t.text :content
      t.string :security_clearance

      t.timestamps
    end
  end
end
