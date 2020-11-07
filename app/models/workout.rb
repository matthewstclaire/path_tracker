class Workout < ApplicationRecord
    has_many :comments
    has_many :users, through: :comments
    accepts_nested_attributes_for :comments
    validates :workout_name, :warmup, :power, :endurance, presence: true

end
