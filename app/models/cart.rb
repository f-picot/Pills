class Cart < ApplicationRecord
  belongs_to :user, optional: true
  has_many :cart_items
  validates :cart_items, uniqueness: { scope: :pill }

  def total
    self.cart_items.inject(0) { |sum, cart_item| sum + (cart_item.pill.price * cart_item.quantity) }
  end
end
