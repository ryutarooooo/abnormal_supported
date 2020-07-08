class PostsController < ApplicationController
  before_action :set_post, only: %i[show edit update destroy]

  def index
    @posts = Post.order(id: :asc)
  end

  def show
  end

  def new
    @post = Post.new
  end

  def create
    post = Post.create!(post_params)
    redirect_to post, notice: "登録しました"
  end

  def edit
  end

  def update
    @post.update!(post_params)
    redirect_to @post, notice: "変更しました"
  end

  def destroy
    @post.destroy!
    redirect_to @post, alert: "削除しました"
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:place, :title, :content, :fix_detail)
  end
end
