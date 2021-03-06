class Cart < ApplicationRecord
  belongs_to :user, optional: true
  has_many :cart_items, dependent: :destroy
  geocoded_by :delivery_location
  after_validation :geocode, if: :delivery_location_changed?

  def nb_items
    self.cart_items.inject(0) { |sum, cart_item| sum + cart_item.quantity }
  end

  def total
    self.cart_items.inject(delivery_price) { |sum, cart_item| sum + (cart_item.pill.price.to_d * cart_item.quantity) }
  end

  def total_cents
    total * 100
  end

  def currency
    if self.cart_items.any? && self.cart_items.first.pill
      self.cart_items.first.pill.price.currency
    end
  end

end
