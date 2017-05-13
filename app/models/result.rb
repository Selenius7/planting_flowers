# == Schema Information
#
# Table name: results
#
#  id          :integer          not null, primary key
#  flower_id   :integer
#  result_date :date
#  comment     :string(200)
#

class Result < ActiveRecord::Base
	belongs_to :flower
end
