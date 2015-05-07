class TeamsController < ApplicationController

  def index
    @teams = Team.where(year: Time.now.year)
    render :index
  end

  def new
    @team = Team.new
    render :new
  end

  def create
    @team = Team.new(team_params)

    if @team.save
      render :show
    else
      flash[:notice].errors = @team.errors.full_messages
      redirect_to :new
    end
  end

  def show
    @team = Team.find(params[:id])
    render :show
  end

  def edit
    @team = Team.find(params[:id])
    render :edit
  end

  def update
    @team = Team.find(params[:id])

    if @team.update(team_params)
      render :show
    else
      flash[:notice].errors = @team.errors.full_messages
      redirect_to :edit
    end
  end

  def destroy
    @team = Team.find(params[:id])
    @team.destroy
    render :index
  end

  private

    def team_params
      params.require(:team).permit(:name, :coaches, :year)
    end

end
