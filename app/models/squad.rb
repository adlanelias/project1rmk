# == Schema Information
#
# Table name: squads
#
#  id         :bigint(8)        not null, primary key
#  name       :text
#  number     :text
#  position   :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Squad < ApplicationRecord
  has_many :players
  has_and_belongs_to_many :users 
  has_and_belongs_to_many :clubs
end
