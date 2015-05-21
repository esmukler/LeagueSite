class Team < ActiveRecord::Base
  validates :name, :year, presence: true
  validates :name, uniqueness: true

  has_many :players
end
