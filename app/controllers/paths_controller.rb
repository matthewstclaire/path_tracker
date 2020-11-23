class PathsController < ApplicationController
    before_action :require_login

    def show
        @path = Path.find(params[:id])
    end

    def index
        @paths = current_user.path
    end

    def new
        @path = Path.new
    end

    def create
        @path = current_user.build_path(path_params)
        if @path.save
            redirect_to path_path(@path)
        else
            flash[:errors] = @path.errors.full_messages
            redirect_to new_path_path
        end
    end

    private

    def path_params
        params.require(:path).permit(:back_squat, :bench_press, :front_squat, :clean_jerk, :overhead_squat, :strict_overhead_press, :snatch)
    end
end
