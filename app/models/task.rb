# == Schema Information
#
# Table name: tasks
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  chore_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Task < ApplicationRecord
  has_many :chores
  has_many :users
end
