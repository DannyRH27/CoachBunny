# == Schema Information
#
# Table name: coaches
#
#  id                :bigint           not null, primary key
#  first_name        :string           not null
#  last_name         :string           not null
#  image_url         :string
#  zip_code          :string           not null
#  coach_description :text             not null
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#
require 'test_helper'

class CoachTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
