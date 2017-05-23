# == Schema Information
#
# Table name: orders
#
#  id        :integer          not null, primary key
#  date      :date
#  cost      :integer
#  flower_id :integer
#  client_id :integer
#  note_id   :integer
#

class Order < ActiveRecord::Base
  include Notable

  belongs_to :flower
  belongs_to :client
end
