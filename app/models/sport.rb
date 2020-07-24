# == Schema Information
#
# Table name: sports
#
#  id         :bigint           not null, primary key
#  sport      :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Sport < ApplicationRecord
  validates :sport, presence: true

  has_many :coaching_sessions
  has_many :coach_details

  has_many :coaches,
    through: :coach_details,
    source: :coach

end

