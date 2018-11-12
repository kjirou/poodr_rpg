# frozen_string_literal: true

module PoodrRpg
  class Game
    def initialize
      @battle = PoodrRpg::Battle.new
    end

    def run
      @battle.transit_to_next_turn
      puts @battle.to_text
      sleep 1

      @battle.transit_to_next_turn
      puts @battle.to_text
      sleep 1

      @battle.transit_to_next_turn
      puts @battle.to_text
      sleep 1

      puts 'Game finished.'
    end
  end
end
