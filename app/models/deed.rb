# == Schema Information
#
# Table name: deeds
#
#  id   :integer          not null, primary key
#  name :string(20)
#

class Deed < ActiveRecord::Base
  has_many :elevations
end
