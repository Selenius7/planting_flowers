# == Schema Information
#
# Table name: notes
#
#  id                 :integer          not null, primary key
#  data_of_the_result :date
#  note               :text(65535)
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class Note < ActiveRecord::Base
  has_many :clients
  has_many :cultures
  has_many :elevations
  has_many :flowers
  has_many :orders
  has_many :garden_beds
end
