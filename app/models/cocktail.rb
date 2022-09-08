class Cocktail < ActiveRecord::Base
    has_many :reviews//one to many relationship
    validates :cocktail_name, presence: true, uniqueness: true
    
end