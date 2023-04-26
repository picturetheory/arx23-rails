class CardsController < ApplicationController

  def create # This is were to put the code that will draw a card for the player
    @game = Game.find(params[:game_id]) # Sets the relevant game as @game
    @card = @game.cards.create(card_params) # Creates a card with the parameters passed to it from the Create Card form, and passes it to @game
    redirect_to game_path(@game) # Redirects user to the game page, with @game displayed
  end

  private
    def card_params
      params.require(:card).permit(:value, :suit, :holder) # If using the blackjack-rails approach, the cards won't need a "holder" field because different players' cards will be stored in different arrays
    end
end
