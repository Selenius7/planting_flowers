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

  before_create :set_elevation_data

  private

  def set_elevation_data
    self.elevation_data = (flower.planting_date + rand(1..1000).hours)
  end
end
