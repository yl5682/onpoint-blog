module Blog
  class PostsController < BlogController
    before_action :set_post, only: [:show, :edit, :update, :destroy]

    # GET /posts
    # GET /posts.json
    def index
      @posts = Post.published.most_recent.paginate(:page => params[:page], :per_page => 3)
    end

    # GET /posts/1
    # GET /posts/1.json
    def show
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_post
        @post = Post.friendly.find(params[:id])
      end

      # Never trust parameters from the scary internet, only allow the white list through.
      def post_params
        params.require(:post).permit(:title, :body, :description, :banner_image_url)
      end

  end
end
