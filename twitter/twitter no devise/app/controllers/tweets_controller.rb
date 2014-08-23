class TweetsController < ApplicationController

  def index
    @tweets = Tweet.all
  end

  def new

  end

  def create
    @user = User.find_by_id(1)
    @tweet = @user.tweets.create(content: params[:content])
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
