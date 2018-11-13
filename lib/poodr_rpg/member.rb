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
      my_party = find_my_party(all_parties)

      unless my_party
        raise 'A member can not do actions if it dose not belong to a party.'
      end

      rest_parties = all_parties.reject {|party| party == my_party}

      if rest_parties.size != 1
        raise 'Currently, there is only one team to be targeted for attack.'
      end

      attack_target_party = rest_parties[0]

      "#{name}(#{my_party.name}) did an action. Attacked to \"#{attack_target_party.name}\" party!"
    end

    private

    def find_my_party(parties)
      parties.find { |party| party.own_member?(self) }
    end
  end
end
