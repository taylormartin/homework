class TweetsController < ApplicationController

  before_action :authenticate_user!

  def index
    @tweets = Tweet.all
  end

  def new

  end

  def create
    @tweet = current_user.tweets.create(content: params[:content])
    redirect_to :root
  end

  def show

  end

  def edit

  end

  def update

  end

  def destroy

  end

end
