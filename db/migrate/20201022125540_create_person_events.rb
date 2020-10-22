class CreatePersonEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :person_events do |t|
      t.integer :event_id
      t.integer :person_id

      t.timestamps
    end
  end
end
