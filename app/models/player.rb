class Player < ActiveRecord::Base
  validates :name, :team_id, presence: true
  validates :name, uniqueness: { scope: :team_id,
    message: "already a player by that name on this team"}

  belongs_to :team


  def height
    self.height_feet.to_s + "\' " + self.height_inches + "\""
  end

end
