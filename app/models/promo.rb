class Promo < ApplicationRecord
  belongs_to :empresa
  has_one_attached :image
end
