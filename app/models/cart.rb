class Cart < ApplicationRecord
  belongs_to :user, optional: true
  has_many :cart_items
  geocoded_by :delivery_location
  after_validation :geocode, if: :delivery_location_changed?

  def nb_items
    self.cart_items.inject(0) { |sum, cart_item| sum + cart_item.quantity }
  end

  def total
    self.cart_items.inject(delivery_price) { |sum, cart_item| sum + (cart_item.pill.price.to_d * cart_item.quantity) }
  end
end
