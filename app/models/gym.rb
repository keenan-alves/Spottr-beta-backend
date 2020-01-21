class Gym < ApplicationRecord
    has_many :locations
    has_many :coordinates, through: :locations 
    has_many :images, through: :locations 
end
