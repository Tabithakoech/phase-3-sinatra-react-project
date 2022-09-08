class Cocktail < ActiveRecord::Base
    has_many :reviews
    validates :cocktail_name, presence: true, uniqueness: true
    
end