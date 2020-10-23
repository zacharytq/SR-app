class Document < ApplicationRecord
    belongs_to :event
    belongs_to :user
    has_many :document_people
    has_many :people, through: :document_people
end
