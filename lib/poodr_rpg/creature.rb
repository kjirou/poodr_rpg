# frozen_string_literal: true

module PoodrRpg
  class Creature
    attr_reader :name, :max_life, :life

    def initialize(name:)
      @name = name
      @max_life = default_max_life
      @life = max_life
    end

    def default_max_life
      raise NotImplementedError
    end
  end
end
