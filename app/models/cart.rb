class Cart < ApplicationRecord
  belongs_to :user, optional: true
  has_many :cart_items
  validates :cart_items, uniqueness: { scope: :pill }
end
