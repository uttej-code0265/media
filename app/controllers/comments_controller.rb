class CommentsController < ApplicationController
    def create
        @post=Post.find(params[:post_id])
        @comment=@post.comments.new(params[:comment].permit(:name,:reply))
        if @comment.save
        redirect_to post_path(@post)
        else
        redirect_to post_path(@post)
        end
    end

    def destroy
        @post=Post.find(params[:post_id])
        @comment=@post.comments.find(params[:id])
        @comment.destroy
        redirect_to @post
    end
    
end
