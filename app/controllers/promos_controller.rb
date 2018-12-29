class PromosController < ApplicationController
  before_action :set_promo, only: [:show, :edit, :update, :destroy]

  # GET /promos
  # GET /promos.json
  def index
    @promos = Promo.all
  end

  # GET /promos/1
  # GET /promos/1.json
  def show
  end

  # GET /promos/new
  def new
    @promo = Promo.new
  end

  # GET /promos/1/edit
  def edit
  end

  def mispromos
  plan = current_user.empresa.plan
  last_promo = current_user.empresa.try(:promos).try(:first)

  if plan != 'premium'
    if last_promo != nil
      waiting = waiting_date(last_promo, plan)
      if (waiting > Time.zone.now)
        @waiting = (waiting - Time.zone.now).to_i
      end
    else
      @waiting = nil
    end
  end

  @pasadas = Promo.where("validez <= ? AND empresa_id = ?", Time.zone.now, current_user.empresa.id).order("created_at DESC")
  @actuales = Promo.where("validez > ? AND empresa_id = ?", Time.zone.now, current_user.empresa.id).order("created_at DESC")

  @ready = false
  case plan
  when 'premium'
    if (@actuales.count < 3)
      return @ready = true
    else
      if is_still_valid?(@actuales[0]) == false
        return @ready = true # At least the last one isn' valid
      else
        @waiting = @actuales[0].validez.to_i - Time.zone.now.to_i
        flash.now[:notice] = "Has llegado al límite máximo (3) de promociones simultáneas"
      end
    end
  when 'plus'
    return @ready = true if @waiting == nil
  when 'basic'
    return @ready = true if @waiting == nil
  end

end

  # POST /promos
  # POST /promos.json
  def create

    user ||= current_user
    @promo = user.try(:empresa).try(:promos).build(promo_params)

    #@promo = Promo.new(promo_params)

    respond_to do |format|
      if @promo.save
        format.html { redirect_to @promo, notice: 'Promo was successfully created.' }
        format.json { render :show, status: :created, location: @promo }
      else
        format.html { render :new }
        format.json { render json: @promo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /promos/1
  # PATCH/PUT /promos/1.json
  def update
    respond_to do |format|
      if @promo.update(promo_params)
        format.html { redirect_to @promo, notice: 'Promo was successfully updated.' }
        format.json { render :show, status: :ok, location: @promo }
      else
        format.html { render :edit }
        format.json { render json: @promo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /promos/1
  # DELETE /promos/1.json
  def destroy
    @promo.destroy
    respond_to do |format|
      format.html { redirect_to promos_url, notice: 'Promo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_promo
      @promo = Promo.find(params[:id])
    end

    #returns the date to wait to in plans plus and basic given the last promo
    def waiting_date (last_promo_item, plan)
      num = ((last_promo_item.validez - last_promo_item.created_at)/60/60/24).round
      case num
      when 7
        if (plan == 'plus')
          last_promo_item.validez + 3.days
        elsif (plan == 'basic')
          last_promo_item.validez + 10.days
        end
      when 3
        if (plan == 'plus')
          last_promo_item.validez + 2.days
        elsif (plan == 'basic')
          last_promo_item.validez + 5.days
        end
      when 1
        if (plan == 'plus')
          last_promo_item.validez + 1.days
        elsif (plan == 'basic')
          last_promo_item.validez + 2.days
        end
      else
        #Error -> Promo lasted and unselectable number of days
      end

    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def promo_params
      params.require(:promo).permit(:titulo, :texto, :validez)
    end
end
