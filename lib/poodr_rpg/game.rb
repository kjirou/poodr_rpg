# frozen_string_literal: true

module PoodrRpg
  class Game
    def initialize
      parties = [
        Party.new(
          members: [
            Member.new(name: 'Foo'),
            Member.new(name: 'Bar'),
            Member.new(name: 'Baz')
          ]
        ),
        Party.new(
          members: [
            Member.new(name: 'Hoge'),
            Member.new(name: 'Fuga')
          ]
        )
      ]

      @battle = PoodrRpg::Battle.new(parties: parties)
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
