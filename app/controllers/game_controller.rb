class GameController < ApplicationController
  def play
  
  end

  def index
    if request.post?
      @player1 = Player.new(name:params[:playerOneName])
      @player2 = Player.new(name:params[:playerTwoName])
      @player1.save
      @player2.save
     
      redirect_to :action=>:play
    end
  end
end
