# frozen_string_literal: true

module PoodrRpg
  class Party
    attr_reader :name, :members

    def initialize(name:, members:)
      @name = name
      @members = members
    end

    def own_member?(member)
      members.include?(member)
    end

    def choice_member_to_be_attacked
      members.sample
    end
  end
end
