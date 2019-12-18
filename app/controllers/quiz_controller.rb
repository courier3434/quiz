class QuizController < ApplicationController
  def index
    @episode = Episode.all 
  end

  def new
    @episode = Episode.new
  end

  def create
    Episode.create(episode_params)
    redirect_to episodes_path
  end

  private

  def episode_params
    params.require(:episode).permit(:airdate)
  end
end
