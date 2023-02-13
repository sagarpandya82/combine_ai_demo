class LikesController < ApplicationController
  def create
    @like = Like.new(
                       user_id: current_user.id,
                       mini_post_id: params[:post_id]
                     )
    @like.save
    redirect_back_or_to root_path
  end

  def destroy
    @mini_post = MiniPost.find(params[:post_id])
    @like = @mini_post.likes.find_by(user_id: current_user.id)
    @like.destroy
    redirect_back_or_to root_path
  end
end
