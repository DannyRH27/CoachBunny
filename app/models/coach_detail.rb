# == Schema Information
#
# Table name: coach_details
#
#  id            :bigint           not null, primary key
#  coach_id      :integer          not null
#  sport_id      :integer          not null
#  duration      :integer          not null
#  elite_coach   :boolean          default(FALSE), not null
#  equipment     :boolean          default(FALSE), not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  coaching_rate :integer
#
class CoachDetail < ApplicationRecord
  validates :coach_id, :sport_id, :duration, :coaching_rate, :session_description, presence: true
  validates :elite_coach, :equipment, inclusion: {in: [true, false]}

  belongs_to :coach
  belongs_to :sport

end


