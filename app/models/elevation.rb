# == Schema Information
#
# Table name: elevations
#
#  id             :integer          not null, primary key
#  deed_id        :integer
#  flower_id      :integer
#  elevation_data :date
#  comment        :string(200)
#  note_id        :integer
#

class Elevation < ActiveRecord::Base
  include Notable

  belongs_to :deed
  belongs_to :flower

  before_create :set_elevation_data

  private

  def set_elevation_data
    self.elevation_data = (flower.planting_date + rand(1..1000).hours)
  end
end
