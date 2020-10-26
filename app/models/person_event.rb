class PersonEvent < ApplicationRecord
    belongs_to :person
    belongs_to :event

    accepts_nested_attributes_for :person
end
