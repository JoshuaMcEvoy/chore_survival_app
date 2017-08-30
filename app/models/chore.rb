# == Schema Information
#
# Table name: chores
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  reward      :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  image       :text
#

class Chore < ApplicationRecord
  has_and_belongs_to_many :users
end
