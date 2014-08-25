class ProfilesController < ApplicationController

  before_action :authenticate_user!

  def index
    @users = User.all
  end

  def show
    @followed_user = User.find(params[:id])
    r = Relationship.new(follower_id: current_user.id, followed_id: params[:commit])
    r.save!
  end

end
