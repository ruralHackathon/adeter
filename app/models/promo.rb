class Promo < ApplicationRecord
  belongs_to :empresa
  has_one_attached :image

  private
  def promo_params
    params.require(:promo).permit(:titulo, :info, :fecha, :image)
  end
end
