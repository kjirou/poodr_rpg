# frozen_string_literal: true

module PoodrRpg
  class Member
    def initialize(creature:)
      @creature = creature
    end

    def name
      @creature.name
    end
  end
end
