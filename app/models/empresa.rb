class Empresa < ApplicationRecord
  belongs_to :user
  has_many :promos

  has_one_attached :logo
  has_many_attached :images

  private
  def empresa_params
    params.require(:empresa).permit(:nombre, :historia, :resumen, :direccion, :web, :telefono, :email, :video, :horario, :lon, :lat, :content, :logo, images: [])
  end


end
