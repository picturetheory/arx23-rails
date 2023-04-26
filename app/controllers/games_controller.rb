class GamesController < ApplicationController
  def index
    @games = Game.all
  end
  
  def show
    @game = Game.find(params[:id])
  end
  
  def new
    @game = Game.new
  end

  def create
    @game = Game.new(gameid: "2", player1: "...", player1score: "0", player2: "...", player2score: "0")

    if @game.save
      redirect_to @game
    else
      render :new, status: :unprocessable_entity
    end
  end
  
  def edit
    @game = Game.find(params[:id])
  end

  def update
    @game = Game.find(params[:id])

    if @game.update(game_params)
      redirect_to @game
    else
      render :edit, status: :unprocessable_entity
    end
  end
  
  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to root_path, status: :see_other
  end
  
  private
    def game_params
      params.require(:game).permit(:gameid, :datetime, :player1, :player1score, :player2, :player2score, :activegame, :winner)
    end
  
end
