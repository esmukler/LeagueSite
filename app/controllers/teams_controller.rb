class TeamsController < ApplicationController

  def index
    @teams = Team.where(year: Time.now.year)
  end

  def new
    @team = Team.new
    # Not sure if this is right
    @team.players.build
  end

  def create
    players_attrs = team_params.delete(:players_attributes)
    @team = Team.new(year: Time.now.year)

    # rescue any errors?
    @team.update(team_params)

    players_attrs.values.each do |player_attrs|

      # rescue any errors?
      player = @team.players.create(player_attrs)
    end
    render :show
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
      redirect_to team_url(@team)
    end
  end

  def destroy
    @team = Team.find(params[:id])
    @team.destroy
    render :index
  end

  private

    def team_params
      params.require(:team).permit!
    end

end
