class InfoController < ApplicationController
  def index
    @eventos = Evento.all
    @promos = Promo.all
    @empresas = Empresa.all
  end

  def mercadillo
  end

  def historia
  end

  def turismoactivo
  end

  def turismo
  end

  def alojamiento
  end

  def gastronomia
  end

  def naturaleza
  end

  def ocio
  end

  def mapa
  end
end
