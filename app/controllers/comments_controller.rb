class CommentsController < ApplicationController
    before_action :require_login

    def create
        comment = Comment.create(comment_params)
        redirect_to workout_comment_path[:id, :workout_id]
      end


      def comment_params
        params.require(:comment).permit(:content, :workout_id, :user_id, user_attributes:[:name])
      end

end
