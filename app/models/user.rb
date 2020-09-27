class User < ApplicationRecord
    has_many :rides
    has_many :attractions, through: :rides

    has_secure_password

    def mood
      unless self.admin
        if self.happiness > self.nausea
            "happy"
        else 
            "sad"
        end
      end 
    end
end
