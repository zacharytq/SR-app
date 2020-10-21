class User < ApplicationRecord
    has_many :user_events
    has_many :events, through: :user_events
    has_many :notes
    has_many :documents
end
