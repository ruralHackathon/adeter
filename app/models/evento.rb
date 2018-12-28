class Evento < ApplicationRecord
  has_one_attached :image

  private
  def evento_params
    params.require(:evento).permit(:titulo, :texto, :validez, :image)
  end
end
