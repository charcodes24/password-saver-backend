class Password < ApplicationRecord
    belongs_to :user
    
    validates :key, presence: true 
    validates :charm, presence: true 
    validates :chain, presence: true 

end
