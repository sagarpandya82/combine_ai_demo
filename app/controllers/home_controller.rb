class HomeController < ApplicationController
  def index
    @following = current_user&.following
    render
  end
end