# == Schema Information
#
# Table name: clients
#
#  id         :integer          not null, primary key
#  first_name :string(10)
#  last_name  :string(10)
#  phone      :string(255)
#  note_id    :integer
#

class Client < ActiveRecord::Base
  include Notable

  def full_name
  	"#{first_name} #{last_name}"
  end
end
