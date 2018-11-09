# frozen_string_literal: true

module PoodrRpg
  class Game
    def initialize
      @battle = PoodrRpg::Battle.new
    end

    def run
      @battle.proceed
      puts @battle.to_text
      sleep 1

      @battle.proceed
      puts @battle.to_text
      sleep 1

      @battle.proceed
      puts @battle.to_text
      sleep 1

      puts 'Game finished.'
    end
  end
end
