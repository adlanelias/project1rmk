# == Schema Information
#
# Table name: standings
#
#  id              :bigint(8)        not null, primary key
#  team_rank       :text
#  team_name       :text
#  win             :integer
#  draw            :integer
#  loss            :integer
#  goals_for       :integer
#  goals_against   :integer
#  goal_difference :integer
#  points          :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Standing < ApplicationRecord
  has_and_belongs_to_many :clubs
  
end
