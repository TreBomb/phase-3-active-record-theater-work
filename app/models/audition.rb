class Audition < ActiveRecord::Base
    belongs_to :roles

    def role
        role = Role.all.find {|role| role.id === self.role_id}
        role.character_name
    end

    def call_back
        self.update(hired: true)
    end
end