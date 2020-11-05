class PathsController < ApplicationController
    before_action :require_login

    def show
        @path = Path.find(params[:id])
    end

    def index
        @paths = Path.all 
    end
end
