# frozen_string_literal: true

module PoodrRpg
  class Battle
    def initialize(parties:)
      @parties = parties
      @turn_count = 0
      @logs_for_each_turn = {}
    end

    def winner
      if @turn_count >= 4
        "#{@parties[0].members[0].name}'s party"
      end
    end

    def transit_to_next_turn
      @turn_count += 1

      member_to_act = choice_next_member_to_act
      @logs_for_each_turn[@turn_count] = "#{member_to_act.name} acted."
    end

    def to_text
      lines = []
      lines << "Turns: #{@turn_count}"
      lines << @logs_for_each_turn[@turn_count]
      lines << "#{winner} won!" if winner
      lines.join("\n")
    end

    private

    def choice_next_member_to_act
      all_members.sample
    end

    def all_members
      # Q: Write it shorter?
      all_members = []
      @parties.each do |party|
        all_members.concat(party.members)
      end
      all_members
    end
  end
end
