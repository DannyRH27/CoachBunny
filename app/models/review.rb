# == Schema Information
#
# Table name: reviews
#
#  id                  :bigint           not null, primary key
#  body                :text             not null
#  rating              :integer          not null
#  user_id             :integer          not null
#  sport_id            :integer          not null
#  coach_id            :integer          not null
#  coaching_session_id :integer
#

class Review < ApplicationRecord
  validates :user_id, :sport_id, :coach_id, :coaching_session_id, presence: true

  belongs_to :user
  belongs_to :sport
  belongs_to :coach
  belongs_to :coaching_session

end
