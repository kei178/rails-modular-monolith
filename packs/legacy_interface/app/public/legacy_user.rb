module LegacyInterface
  class LegacyUser
    def self.all(limit = 100)
      ::LegacyUser.all.limit(limit)
    end
  end
end
