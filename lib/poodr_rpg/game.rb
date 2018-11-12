# frozen_string_literal: true

module PoodrRpg
  class Game
    def initialize
      @battle = PoodrRpg::Battle.new
    end

    def run
      sleep 0.5

      while
        @battle.transit_to_next_turn
        puts @battle.to_text
        sleep 0.5

        if @battle.winner
          puts 'Game finished.'
          break
        end
      end
    end
  end
end
