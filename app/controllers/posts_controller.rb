class PostsController < ApplicationController
    def new
        @post=Post.new
    end

    def index
        @posts=Post.all    
    end
    
    def create
        @post=Post.new(params_post)
        if @post.save
            redirect_to :posts
        else
            render 'new'
        end
    end

    def show
        @post=Post.find(params[:id])
    end

    def edit
        @post=Post.find(params[:id])
    end

    def update
        @post=Post.find(params[:id])
        if @post.update(params_post)
        redirect_to :posts
        else
            render 'edit'
        end
    end

    def destroy
    @post=Post.find(params[:id])
    @post.destroy
    redirect_to :posts
    end


private

def params_post
    params.require(:post).permit(:title,:description)
end


end
