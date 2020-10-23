class Event < ApplicationRecord
    has_many :person_events
    has_many :people, through: :person_events
    has_many :documents
end
