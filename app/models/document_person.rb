class DocumentPerson < ApplicationRecord
    belongs_to :person
    belongs_to :document
end
