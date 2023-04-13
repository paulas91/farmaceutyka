# == Schema Information
#
# Table name: syrups
#
#  id         :bigint           not null, primary key
#  time       :datetime
#  type       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Syrup < ApplicationRecord
end
