class Team < ActiveRecord::Base
  validates :name, :year, presence: true
  validates :name, uniqueness: true


end
