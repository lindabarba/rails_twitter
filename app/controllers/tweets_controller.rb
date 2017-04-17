class TweetsController < ApplicationController

  def index
    @tweets = Tweet.all
  end

  def new
    @tweets = Tweet.new
  end

  def create
    @tweets = Tweet.new(tweet_params)

    if @tweet.save
      redirect_to_tweets_path
    else
      render :new
    end
  end

  def show
    @tweet = Tweet.find(params[:id])
  end

  def delete
    @tweet = Tweet.find(params[:id])
    @tweet.destroy
    redirect_to_tweets_path
  end

  def edit
    @tweet = Tweet.find(params[:id])
  end

  def update
    @tweet = Tweet.find(params[:id])

    if @tweet.update_attributes(tweet_params)
      redirect_to_tweets_path
    else
      render :edit
    end
  end

  private

  def tweet_params
    params.require(:tweet).permit(:handle, :content)
  end

end
