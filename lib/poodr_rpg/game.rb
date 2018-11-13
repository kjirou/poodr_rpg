# frozen_string_literal: true

module PoodrRpg
  class Game
    def initialize
      parties = [
        Party.new(
          name: 'Villagers',
          members: [
            Member.new(
              creature: Creatures::Villager.new(name: 'Foo')
            ),
            Member.new(
              creature: Creatures::Villager.new(name: 'Bar')
            ),
            Member.new(
              creature: Creatures::Villager.new(name: 'Baz')
            )
          ]
        ),
        Party.new(
          name: 'Goblins',
          members: [
            Member.new(
              creature: Creatures::Goblin.new(name: 'Hoge')
            ),
            Member.new(
              creature: Creatures::Goblin.new(name: 'Fuga')
            )
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
