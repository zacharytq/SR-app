class Person < ApplicationRecord
    has_one :user
    has_many :person_events
    has_many :events, through: :person_events
    has_many :document_people
    has_many :documents, through: :document_people

    def full_name
        self.first_name + " " + self.last_name
    end
end
