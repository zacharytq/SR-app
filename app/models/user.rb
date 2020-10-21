class User < ApplicationRecord
    has_secure_password
    validates :first_name, presence: true
    validates :last_name, presence: true
    has_many :user_events
    has_many :events, through: :user_events
    has_many :notes
    has_many :documents
    before_save :set_clearance, :set_title

    def date_started
        self.created_at.strftime("%B %e, %Y")
    end

    private
    def set_clearance
        self.security_clearance = "Declassified"
    end

    def set_title
        self.title = "Pending Assignment"
    end
end
