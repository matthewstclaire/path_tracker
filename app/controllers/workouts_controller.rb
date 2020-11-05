class WorkoutsController < ApplicationController
    before_action :require_login

    def show
        @workout = Workout.find(params[:id])
    end

    def index
        @workouts = Workout.all 
    end

    def new
        @workout = Workout.new
      end

    def create
        @workout = Workout.create(workout_params)
        if @workout.save
            redirect_to workout_path(@workout)
        else
            render :new
        end
    end

private

    def workout_params
        params.require(:workout).permit(:warmup, :power, :endurance, comments_attributes: [:content])
    end

end
