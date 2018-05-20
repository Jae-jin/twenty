class PostsController < ApplicationController
    protect_from_forgery with: :null_session
    
    def index 
        @posts = Post.all  #첫 화면->picture list
    end
    
    def new
        @post = Post.new
    end
    
    def create
        @post = Post.new(post_params)  #new.html.erb에서 정보를 받아옴
    
        if @post.save  #db에 저장
            redirect_to @post  #show.html.erb로 이동
        else
            render 'new'
        end
    end
    
    def show
        @post = Post.find(params[:id])  #해당 post의 id로부터 post 객체를 찾아 보여줌
    end
    
    def edit
        @post = Post.find(params[:id])
    end
    
    def update
        @post = Post.find(params[:id])

        if @post.update(post_params)
          redirect_to @post
        else
          render 'edit'
        end
    end
    
    def destroy
        @post = Post.find(params[:id])
        @post.destroy
      
        redirect_to posts_path
    end
    
    private
        def post_params
            params.require(:post).permit(:title, :information, :image)  #post의 변수들을 저장
        end
end
