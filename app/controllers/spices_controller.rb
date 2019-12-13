# frozen_string_literal: true

class SpicesController < OpenReadController
  before_action :set_spice, only: %i[update destroy]

  # GET /spices
  def index
    @spices = Spice.all
    render json: @spices
  end

  # GET /spices/1
  def show
    render json: @spice
  end

  # POST /spices
  def create
    @spice = Spice.new(spice_params)
    @spice = current_user.spices.build(spice_params)

    if @spice.save
      render json: @spice, status: :created, location: @spice
    else
      render json: @spice.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /spices/1
  def update
    if @spice.update(spice_params)
      render json: @spice
    else
      render json: @spice.errors, status: :unprocessable_entity
    end
  end

  # DELETE /spices/1
  def destroy
    @spice.destroy
    head :no_content
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_spice
    @spice = current_user.spices.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def spice_params
    params.require(:spice).permit(:name, :origin, :culinary_use, :weight, :price)
  end
end
