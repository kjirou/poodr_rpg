# frozen_string_literal: true

module PoodrRpg
  class Member
    def initialize(creature:)
      @creature = creature
    end

    def name
      @creature.name
    end

    def do_action(all_parties)
      party = find_my_party(all_parties)

      unless party
        raise 'A member can not do actions if it dose not belong to a party.'
      end

      "#{name}(#{party.name}) did an action."
    end

    private

    def find_my_party(parties)
      parties.find { |party| party.own_member?(self) }
    end
  end
end
