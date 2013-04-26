class Api::EpisodesController < ApiController
  def index
    respond_with Episode.all
  end

  def show
    respond_with Episode.find(params[:id])
  end
end
