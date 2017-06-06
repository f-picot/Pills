class Pill < ApplicationRecord
  has_many :cart_items
  monetize :price_cents
end
