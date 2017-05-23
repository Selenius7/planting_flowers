module Notable
  extend ActiveSupport::Concern

  included do
    belongs_to :note
  end
end