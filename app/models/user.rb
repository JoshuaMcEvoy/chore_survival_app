# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string
#  email           :text
#  rewards_total   :integer
#  password_digest :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  group_id        :integer
#

class User < ApplicationRecord
  has_secure_password
  validates :email, :presence => true, :uniqueness => true
  belongs_to :group, :optional => true
  has_and_belongs_to_many :chores
end
