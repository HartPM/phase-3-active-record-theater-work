class Role < ActiveRecord::Base
    has_many :auditions

    def actors
        self.auditions.map(&:actor)
    end

    def locations
        self.auditions.pluck(:location)
    end

    def lead
        hired_arr = self.auditions.filter do |audition|
            audition.hired
        end

        if hired_arr.length > 0
            self.auditions.find(&:hired)
        else
            return "no actor has been hired for this role"
        end
    end
end