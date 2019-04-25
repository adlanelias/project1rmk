# == Schema Information
#
# Table name: clubs
#
#  id         :bigint(8)        not null, primary key
#  team_name  :text
#  team_rank  :text
#  manager    :text
#  schedule   :text
#  image      :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  player_id  :integer
#  squad_id   :integer
#

class Club < ApplicationRecord
  has_and_belongs_to_many :users
  has_and_belongs_to_many :players, :optional => true
  has_and_belongs_to_many :squads

end
