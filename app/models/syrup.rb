# == Schema Information
#
# Table name: syrups
#
#  id         :bigint           not null, primary key
#  name       :string
#  time       :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Syrup < ApplicationRecord
end
