# == Schema Information
#
# Table name: session_details
#
#  id            :bigint           not null, primary key
#  coach_id      :integer          not null
#  sport_id      :integer          not null
#  duration      :integer          not null
#  frequency     :integer          not null
#  elite_coach   :boolean          default(FALSE), not null
#  equipment     :boolean          default(FALSE), not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  coaching_rate :integer
#
class SessionDetail < ApplicationRecord
  validates :coach_id, :sport_id, :duration, :frequency, :coaching_rate, presence: true
  validates :elite_coach, :equipment, inclusion: {in: [true, false]}

  has_one :review
  belongs_to :coach
  belongs_to :sport

end
