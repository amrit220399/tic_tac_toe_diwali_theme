class Player < ApplicationRecord
    has_one :scoreboard
    after_save :update_username
  
    validates :name, presence: true
   
    private
    def update_username
        logger.info(self.id)
        new_username = self.name + self.id.to_s
        self.update_column(:username,new_username)
    end
end
