class Empresa < ApplicationRecord
  belongs_to :user
  has_many :promos

  has_one_attached :logo
  has_many_attached :images

  skip_callback :validate, after: :create
  after_initialize :set_default_plan, :if => :new_record?

  attr_accessor :tag_list

  enum plan: [:noplan, :basic, :plus, :premium]


  private
  def empresa_params
    params.require(:empresa).permit(:nombre, :historia, :resumen, :direccion, :web, :telefono, :email, :video, :horario, :lon, :lat, :content, :logo, images: [])
  end

  def set_default_plan
    self.plan ||= :noplan
  end


end
