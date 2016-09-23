class Trend < ApplicationRecord
  validates_length_of :first_title, :maximum => 15

  mount_uploader :snap, TrendUploader
end
