class Api::SchedulingsController < ApiController
  def index
    @schedulings = Scheduling.all
  end

  def show
    @scheduling = Scheduling.find(params[:id])
  end
end
