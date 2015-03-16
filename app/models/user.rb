# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  username   :string(255)
#  email      :string(255)
#  password   :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ActiveRecord::Base
  attr_accessible :email, :password, :username, :password_confirmation
has_secure_password
  before_save { |user| user.email = email.downcase }
  before_save { |user| user.username = username.downcase }

  validates :username, presence: true, length: { maximum: 50 } , uniqueness:{ case_sensitive: false }
  validates :email, presence: true , uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 6 }
validates :password_confirmation, presence: true
end
