# == Schema Information
#
# Table name: flowers
#
#  id            :integer          not null, primary key
#  f_name        :string(20)
#  culture_id    :integer
#  cost          :integer
#  garden_bed_id :integer
#  planting_date :date
#  note_id       :integer
#

class Flower < ActiveRecord::Base
  include Notable

  belongs_to :culture
  belongs_to :garden_bed
  has_many :elevations, dependent: :destroy
  has_many :orders, dependent: :destroy

  before_save :ensure_cost

  private

  def ensure_cost
    self.cost = 0 unless cost
    true
  end
end
