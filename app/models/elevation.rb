class Elevation < ActiveRecord::Base
  belongs_to :action
  belongs_to :flower
end
