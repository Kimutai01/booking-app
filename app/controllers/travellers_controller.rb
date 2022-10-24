class TravellersController < ApplicationController
  before_action :set_bus
  before_action :set_traveller, only: [:show, :edit, :update, :destroy]

  # GET buses/1/travellers
  def index
    if current_user.email.include? "admin"
      @travellers = @bus.travellers
    else
       @travellers = @bus.travellers.where(user_id: current_user.id)
    end
  end

  # def show_bookings
  #   @travellers = Bus.where(user_id: current_user.id && traveller_id: current_user.id)
  # end

  # GET buses/1/travellers/1
  def show

  end

  # GET buses/1/travellers/new
  def new
    @traveller = @bus.travellers.build
    @traveller.user_id = current_user.id
  end

  # GET buses/1/travellers/1/edit
  def edit
  end

  # POST buses/1/travellers
  def create
    @traveller = @bus.travellers.build(traveller_params)
    @traveller.user_id = current_user.id
    if @traveller.save
      redirect_to buses_path, notice: 'Traveller was successfully created.'
    else
      render action: 'new'
    end
  end

  # PUT buses/1/travellers/1
  def update
    if @traveller.update_attributes(traveller_params)
      redirect_to([@traveller.bus, @traveller], notice: 'Traveller was successfully updated.')
    else
      render action: 'edit'
    end
  end

  # DELETE buses/1/travellers/1
  def destroy
    @traveller.destroy
    

    redirect_to bus_travellers_url(@bus)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bus
      @bus = Bus.find(params[:bus_id])
    end

    def set_traveller
      @traveller = @bus.travellers.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def traveller_params
      params.require(:traveller).permit(:name, :phone_number, :bus_id, :user_id, :number_of_seats)
    end
end
