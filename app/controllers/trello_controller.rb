class TrelloController < ApplicationController
  def index
    render json: Trello.board
  end
end
