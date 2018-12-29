class Admin::ApplicationController < ApplicationController
  def index
    @users = User.count
    @promos = Promo.count
    @eventos = Evento.count
    @empresas = Empresa.count
    @puntos = Punto.count
  end

  private
  def authorize_admin!
    authenticate_user!
    unless (current_user.admin?)
      redirect_to root_path, alert: "Tú no eres administrador."
    end
  end
end
