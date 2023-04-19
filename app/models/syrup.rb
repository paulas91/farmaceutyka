# == Schema Information
#
# Table name: syrups
#
#  id         :bigint           not null, primary key
#  dose_time  :datetime
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Syrup < ApplicationRecord
  validates :name, :dose_time, presence: true
  validates :name, uniqueness: true
end
