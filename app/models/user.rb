class User < ApplicationRecord
    has_secure_password
    validates :name, presence: true
    belongs_to :person
    has_many :notes
    has_many :documents
    before_save :set_clearance, :set_title
    accepts_nested_attributes_for :person

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
