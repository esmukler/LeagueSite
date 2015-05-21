class PlayersController < ApplicationController

  def create
    @team = Team.find(params[:id])
    @player = @team.players.new(player_params)

    if @team.save
      render @team
    else
      flash[:notice].errors = @player.errors.full_messages
      redirect_to team_url @team
    end
  end

  def show
    @player = Team.find(params[:id])
    render :show
  end

  def update
    @player = Team.find(params[:id])

    if @player.update(player_params)
      render :show
    else
      flash[:notice].errors = @player.errors.full_messages
      redirect_to team_player_url @player
    end
  end

  def destroy
  end

  private

    def player_params
      params.require(:player).permit(:name, :affiliation,
        :height_feet, :height_inches, :url)
    end

end
