class CartItem < ApplicationRecord
  belongs_to :pill
  belongs_to :cart
  validates :cart, uniqueness: { scope: :pill }
end
