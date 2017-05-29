class CartItem < ApplicationRecord
  belongs_to :pill
  belongs_to :cart
end
