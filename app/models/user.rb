# == Schema Information
#
# Table name: users
#
#  id              :bigint(8)        not null, primary key
#  email           :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  password_digest :text
#  admin           :boolean          default(FALSE)
#

class User < ApplicationRecord
  has_secure_password
  has_and_belongs_to_many :clubs
  has_and_belongs_to_many :players

  validates :email, :presence => true, :uniqueness => true
end
