# frozen_string_literal: true

module PoodrRpg
  class Party
    def initialize(name:, members:)
      @name = name
      @members = members
    end

    def name
      @name
    end

    def members
      @members
    end

    def own_member?(member)
      @members.include?(member)
    end
  end
end
