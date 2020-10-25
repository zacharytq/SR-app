module ApplicationHelper
    def clearances
        ["declassified", "classified", "secret", "top secret"]
    end

    def set_clearance
        self.security_clearance = "declassified"
    end

    def user_clearance_options
        case current_user.security_clearance
        when "declassified"
            ["declassified"]
        when "classified"
            ["declassified", "classified"]
        when "secret"
            ["declassified", "classified", "secret"]
        when "top secret"
            ["declassified", "classified", "secret", "top secret"]
        end
    end
end
