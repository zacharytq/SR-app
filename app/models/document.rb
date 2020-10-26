class Document < ApplicationRecord
    belongs_to :event, optional: true
    belongs_to :user
    has_many :document_people
    has_many :people, through: :document_people
    accepts_nested_attributes_for :people, reject_if: :rejectable

    private
    def rejectable(att)
        att['first_name'].blank? || att['last_name'].blank?
    end
end
