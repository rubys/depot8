class Product < ApplicationRecord
  has_one_attached :image
#START_HIGHLIGHT
  after_commit -> { broadcast_refresh_later_to "products" }
#END_HIGHLIGHT
end
