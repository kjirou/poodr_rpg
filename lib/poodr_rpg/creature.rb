# frozen_string_literal: true

module PoodrRpg
  class Creature
    def initialize(name:)
      @name = name
      @max_life = default_max_life
      @life = max_life
    end

    def default_max_life
      raise NotImplementedError
    end

    def name
      @name
    end

    def max_life
      @max_life
    end

    def life
      @life
    end
  end
end
