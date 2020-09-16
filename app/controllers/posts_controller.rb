class PostsController < ApplicationController
    before_action :authenticate_user!
    
    def new
        @post=current_user.posts.build
        @post=Post.new
    end

    def index
        @posts=Post.all    
    end
    
    def create
        @post=current_user.posts.build(params_post)
         if @post.save
            redirect_to @post
         else
            render 'new'
         end
    end

    def show
        @post=Post.find(params[:id])
        @comments=@post.comments.all
    end

    def edit
        @post=Post.find(params[:id])
    end

    def update
        @post=Post.find(params[:id])
         if @post.update(params_post)
        redirect_to @post
        else
        render 'edit'
        end
    end

    def destroy
    @post=Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
    end


private

def params_post
    params.require(:post).permit(:title,:description)
end


end