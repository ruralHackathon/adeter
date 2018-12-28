class Empresa < ApplicationRecord
  belongs_to :user
  has_many :promos
end
