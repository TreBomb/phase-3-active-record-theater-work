class Role < ActiveRecord::Base
    has_many :auditions

    def actors
        self.auditions.map {|person| person.actor}
    end

    def locations
        self.auditions.map {|person| person.location}
    end

    def lead
        lead = self.auditions.find {|person| person.hired === true}
        lead ? lead.actor : "no actor has been hired for this role"
    end

    def understudy
        understudy = self.auditions.find_all {|person| person.hired === true}
        understudy.second ? understudy.second.actor : "no actor has been hired for understudy for this role"
    end
end