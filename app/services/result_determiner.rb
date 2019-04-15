# frozen_string_literal: true

class ResultDeterminer
  WIN_COMBINATIONS = {
    'rock' => 'scissors',
    'scissors' => 'paper',
    'paper' => 'rock'
  }.freeze

  def initialize(curb_throw, player_throw)
    @curb_throw = curb_throw
    @player_throw = player_throw
  end

  def call
    if curb_throw == player_throw
      'Draw'
    elsif WIN_COMBINATIONS[curb_throw] == player_throw
      'You Lose'
    else
      'You Win'
    end
  end

  private

  attr_reader :curb_throw, :player_throw
end
