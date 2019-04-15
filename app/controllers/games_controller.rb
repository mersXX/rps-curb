# frozen_string_literal: true

class GamesController < ApplicationController
  def index; end

  def throw
    curb_throw = ResponseFetcher.new.call
    player_throw = params[:type]
    render json: {
      curb_throw: curb_throw,
      player_throw: player_throw,
      result: ResultDeterminer.new(curb_throw, player_throw).call
    }
  end
end
