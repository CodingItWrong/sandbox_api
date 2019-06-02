class GameResource < JSONAPI::Resource
  attributes :title, :year
  has_one :system

  def self.records(options = {})
    user = current_user(options)
    user.games
  end
end
