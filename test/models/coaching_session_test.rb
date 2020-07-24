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
#  training_date        :datetime         not null
#  training_duration    :integer          not null
#  training_description :text             not null
#  training_rate        :integer
#
require 'test_helper'

class CoachingSessionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
