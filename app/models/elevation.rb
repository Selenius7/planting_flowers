# == Schema Information
#
# Table name: elevations
#
#  id             :integer          not null, primary key
#  deed_id        :integer
#  flower_id      :integer
#  elevation_data :date
#  comment        :string(200)
#

class Elevation < ActiveRecord::Base
  belongs_to :deed
  belongs_to :flower
end
