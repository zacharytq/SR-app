module ApplicationHelper
    def clearances
        ["declassified", "classified", "secret", "top secret"]
    end

    def set_clearance
        self.security_clearance = "declassified"
    end
end
