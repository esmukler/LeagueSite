class Team < ActiveRecord::Base
  validates :name, :year, presence: true
  validates :name, uniqueness: true

  has_many :players

# What does this even mean?
  accepts_nested_attributes_for :players

# Got this from http://media.pragprog.com/titles/fr_arr/multiple_models_one_form.pdf

  # def add_player_link(name)
  #   link_to_function name do |page|
  #     page.insert_html :bottom, :players, partial: 'task', object: Player.new
  #   end
  # end


end
