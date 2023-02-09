class MiniPostsController < ApplicationController
  before_action :set_mini_post, only: %i[ show edit update destroy ]

  # GET /mini_posts or /mini_posts.json
  def index
    @mini_posts = MiniPost.all
  end

  # GET /mini_posts/1 or /mini_posts/1.json
  def show
  end

  # GET /mini_posts/new
  def new
    @mini_post = MiniPost.new
  end

  # GET /mini_posts/1/edit
  def edit
  end

  # POST /mini_posts or /mini_posts.json
  def create
    @mini_post = MiniPost.new(mini_post_params)

    respond_to do |format|
      if @mini_post.save
        format.html { redirect_to mini_post_url(@mini_post), notice: "Mini post was successfully created." }
        format.json { render :show, status: :created, location: @mini_post }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @mini_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mini_posts/1 or /mini_posts/1.json
  def update
    respond_to do |format|
      if @mini_post.update(mini_post_params)
        format.html { redirect_to mini_post_url(@mini_post), notice: "Mini post was successfully updated." }
        format.json { render :show, status: :ok, location: @mini_post }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @mini_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mini_posts/1 or /mini_posts/1.json
  def destroy
    @mini_post.destroy

    respond_to do |format|
      format.html { redirect_to mini_posts_url, notice: "Mini post was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def like
    @mini_post = MiniPost.find(params[:post_id])
    @mini_post.likes = @mini_post.likes.to_i + 1
    @mini_post.save
    redirect_back fallback_location: root_path
  end

  def dislike
    @mini_post = MiniPost.find(params[:post_id])
    @mini_post.likes = @mini_post.likes.to_i - 1
    @mini_post.save
    redirect_back fallback_location: root_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mini_post
      @mini_post = MiniPost.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mini_post_params
      params.require(:mini_post).permit(:content, :likes, :user_id)
    end
end
