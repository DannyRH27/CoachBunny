# == Schema Information
#
# Table name: session_details
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
require 'test_helper'

class AvailableCoachTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
