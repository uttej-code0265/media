class CommentsController < ApplicationController
    def create
        @post=Post.find(params[:post_id])
        @comment=@post.comments.build(comment_params)
        @comment.user_id=current_user.id
        if @comment.save
        redirect_to @post
        else
            redirect_to @posts    
        end
    end

    def destroy
        @post=Post.find(params[:post_id])
        @comment=@post.comments.find(params[:id])
        @comment.destroy
        redirect_to @post
    end

private

    def comment_params
        params.require(:comment).permit(:body)
    end
    
end