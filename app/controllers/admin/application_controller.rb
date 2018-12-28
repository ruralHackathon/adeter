class Admin::ApplicationController < ApplicationController
  def index
    @users = User.count
    @promos = Promo.count
    @eventos = Evento.count
    @empresas = Empresa.count
  end
end
