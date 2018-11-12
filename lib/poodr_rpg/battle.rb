# frozen_string_literal: true

module PoodrRpg
  class Battle
    def initialize
      @turn_count = 0
    end

    def winner
      if @turn_count >= 4
        'A Team'
      end
    end

    def transit_to_next_turn
      @turn_count += 1
      # do stuff
    end

    def to_text
      text = "Turns: #{@turn_count}"
      text += "\n#{winner} is won!" if winner
      text
    end
  end
end
