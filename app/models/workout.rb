class Workout < ApplicationRecord
    has_many :comments
    has_many :users, through: :comments
    accepts_nested_attributes_for :comments

    def date_readable
        
    end
end
