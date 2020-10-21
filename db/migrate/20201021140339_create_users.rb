class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :password_digest
      t.string :title
      t.datetime :date_started
      t.text :bio
      t.string :security_clearance

      t.timestamps
    end
  end
end
