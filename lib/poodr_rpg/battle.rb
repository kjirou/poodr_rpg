# frozen_string_literal: true

module PoodrRpg
  class Battle
    def initialize(parties:)
      @parties = parties
      @turn_count = 0
    end

    def winner
      if @turn_count >= 4
        "#{@parties[0].members[0].name}'s party"
      end
    end

    def transit_to_next_turn
      @turn_count += 1
      # do stuff
    end

    def to_text
      text = "Turns: #{@turn_count}"
      text += "\n#{winner} won!" if winner
      text
    end
  end
end
