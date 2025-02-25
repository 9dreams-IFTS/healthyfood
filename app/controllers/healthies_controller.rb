class HealthiesController < ApplicationController
  before_action :set_healthy, only: %i[ show edit update destroy ]

  # GET /healthies or /healthies.json
  def index
    @healthies = Healthy.all
  end

  # GET /healthies/1 or /healthies/1.json
  def show
  end

  # GET /healthies/new
  def new
    @healthy = Healthy.new
  end

  # GET /healthies/1/edit
  def edit
  end

  # POST /healthies or /healthies.json
  def create
    @healthy = Healthy.new(healthy_params)

    respond_to do |format|
      if @healthy.save
        format.html { redirect_to @healthy, notice: "Healthy was successfully created." }
        format.json { render :show, status: :created, location: @healthy }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @healthy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /healthies/1 or /healthies/1.json
  def update
    respond_to do |format|
      if @healthy.update(healthy_params)
        format.html { redirect_to @healthy, notice: "Healthy was successfully updated." }
        format.json { render :show, status: :ok, location: @healthy }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @healthy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /healthies/1 or /healthies/1.json
  def destroy
    @healthy.destroy!

    respond_to do |format|
      format.html { redirect_to healthies_path, status: :see_other, notice: "Healthy was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_healthy
      @healthy = Healthy.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def healthy_params
      params.expect(healthy: [ :titolo, :descrizione, :prezzo ])
    end
end
