class Event < ApplicationRecord
    has_many :person_events
    has_many :people, through: :person_events
    has_many :documents
    accepts_nested_attributes_for :people, reject_if: :rejectable
    

    private
    def rejectable(att)
        att["first_name"].blank? || att['last_name'].blank?
    end
end
