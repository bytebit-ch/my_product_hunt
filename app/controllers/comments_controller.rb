class CommentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_post
  before_action :set_comment, only: [:show, :edit, :update, :destroy]


  def index
    @comments = @post.comments
    @comment = Comment.new
  end


  def create
    @comment = @post.comments.new(comment_params)
    @comment.user = current_user
     
   if @comment.save
      redirect_to(post_comments_path([@post,@comment]), notice: "Comment was successful")
    else
      render :new  
    end
    
  end

  private

  def set_post
    @post = Post.find(params[:post_id])

  end

    def set_comment
      @comment = @post.comments.find(params[:id])
    end

    def comment_params
      params.require(:comment).permit(:content)
    end

end
