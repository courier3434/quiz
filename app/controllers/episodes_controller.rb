class EpisodesController < ApplicationController
  def index
    @episodes = Episode.all
  end

  def new
    @episode = Episode.new
  end

  def create
    @episode = Episode.create(episode_params)
    if @episode.invalid?
      flash[:error] = 'Could Not Save. Invalid Data.'
    end
    redirect_to episodes_path
  end

  private

  def episode_params
    params.require(:episode).permit(:airdate)
  end
end
