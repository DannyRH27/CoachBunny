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
class Coach < ApplicationRecord
  validates :first_name, :last_name, :zip_code, :coach_description, presence: true

  has_many :coaching_sessions
  
  has_many :details,
    foreign_key: :coach_id,
    class_name: :CoachDetail
  
  has_many :sports, # coach has many sports? not needed
    through: :details,
    source: :sport

  end
