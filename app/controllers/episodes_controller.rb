class EpisodesController < ApplicationController
  def index
    @episodes = Episode.all
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
    params.require(:episode).permit(:airdate, :episode_name)
  end
end
