module LegacyInterface
  class LegacyUser
    def self.all(limit = 100)
      ::LegacyUser.all.limit(limit)
    end

    def self.sample
      ::LegacyUser.order("RANDOM()").limit(1).first
    end
  end
end
