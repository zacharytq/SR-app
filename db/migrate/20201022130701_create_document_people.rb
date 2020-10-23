class CreateDocumentPeople < ActiveRecord::Migration[6.0]
  def change
    create_table :document_people do |t|
      t.integer :person_id
      t.integer :document_id

      t.timestamps
    end
  end
end
