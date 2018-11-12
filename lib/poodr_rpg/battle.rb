# frozen_string_literal: true

module PoodrRpg
  class Battle
    def initialize
      @turn_count = 0
    end

    def transit_to_next_turn
      @turn_count += 1
      # do stuff
    end

    def to_text
      "Turns: #{@turn_count}"
    end
  end
end
