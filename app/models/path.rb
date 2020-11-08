class Path < ApplicationRecord
    belongs_to :user
    validates :back_squat, :bench_press, :front_squat, :clean_jerk, :overhead_squat, :strict_overhead_press, :snatch,  presence: true
end
