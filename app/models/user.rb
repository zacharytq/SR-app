class User < ApplicationRecord
    has_many :user_events
    has_many :events, through: :user_events
    has_many :notes
    has_many :documents
    before_create :set_clearance

    private
    def set_clearance
        self.security_clearance = "declassified"
    end
end
