module WorkoutsHelper

    def entered_at_helper(workout)
        workout.created_at_helper.strftime("%B %d, %Y at %H:%M")
    end

end
