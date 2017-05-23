# == Schema Information
#
# Table name: garden_beds
#
#  id      :integer          not null, primary key
#  num     :integer
#  comment :string(200)
#  note_id :integer
#

class GardenBed < ActiveRecord::Base
  include Notable
end
