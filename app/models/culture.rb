# == Schema Information
#
# Table name: cultures
#
#  id      :integer          not null, primary key
#  name    :string(10)
#  note_id :integer
#

class Culture < ActiveRecord::Base
  include Notable
end
