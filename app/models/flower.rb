class Flower < ActiveRecord::Base
  belongs_to :culture
  belongs_to :garden_bed
end
