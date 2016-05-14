class Elevation < ActiveRecord::Base
  belongs_to :deed
  belongs_to :flower
end
