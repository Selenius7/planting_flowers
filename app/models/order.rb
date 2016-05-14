class Order < ActiveRecord::Base
  belongs_to :flower
  belongs_to :client
end
