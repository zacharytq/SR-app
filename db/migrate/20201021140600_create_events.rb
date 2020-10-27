class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :name
      t.string :location
      t.date :date
      t.text :description
      t.string :security_clearance

      t.timestamps
    end
  end
end
