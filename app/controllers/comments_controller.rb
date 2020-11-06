class CommentsController < ApplicationController
    before_action :require_login

    def show
        @comment = Comment.find(params[:id])
    end

    def index
        @comments = Comment.all
    end

    def create
        # binding.pry
        comment = current_user.comments.build(comment_params)
        comment.save
        # binding.pry
        redirect_to workout_comment_path(comment.workout_id, comment)
      end

      def edit
        @comment = Comment.find(params[:id])
    end

    def update
        @comment = Comment.find(params[:id])
        @comment.update(comment_params)
        redirect_to workout_comment_path(@comment)
    end
private
      def comment_params
        params.require(:comment).permit(:content, :workout_id, :user_id, user_attributes:[:name])
      end

end
