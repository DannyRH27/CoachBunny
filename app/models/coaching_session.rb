# == Schema Information
#
# Table name: coaching_sessions
#
#  id                   :bigint           not null, primary key
#  sport_id             :integer          not null
#  coach_id             :integer          not null
#  user_id              :integer          not null
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  training_date        :date             not null
#  training_time        :time             not null
#  training_duration    :integer          not null
#  training_description :text             not null
#
class CoachingSession < ApplicationRecord
  validates :sport_id, :coach_id, :user_id, presence: true
  
  belongs_to :sport
  belongs_to :coach
  belongs_to :user
  has_one :review

end
