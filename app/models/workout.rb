class Workout < ApplicationRecord
    has_many :comments
    has_many :users, through: :comments
    accepts_nested_attributes_for :comments
    validates :workout_name, :warmup, :power, :endurance, presence: true

    scope :active_user, -> {where ("workout_name > 0")}

end
