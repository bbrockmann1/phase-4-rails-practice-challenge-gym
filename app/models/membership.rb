class Membership < ApplicationRecord
    belongs_to :client
    belongs_to :gym
    
    validates :gym_id, uniqueness: true
end
