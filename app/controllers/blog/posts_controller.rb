module Blog
  class PostsController < BlogController
    before_action :set_post, only: [:show, :edit, :update, :destroy]

    # GET /posts
    # GET /posts.json
    def index
      @posts = Post.most_recent
    end

    # GET /posts/1
    # GET /posts/1.json
    def show
    end

  end
end
