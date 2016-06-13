class SoftsController < ApplicationController
  before_action :set_soft, only: [:show, :edit, :update, :destroy]

  # GET /softs
  # GET /softs.json
  def index
    @softs = Soft.all
  end

  # GET /softs/1
  # GET /softs/1.json
  def show
  end

  # GET /softs/new
  def new
    @soft = Soft.new
  end

  # GET /softs/1/edit
  def edit
  end

  # POST /softs
  # POST /softs.json
  def create
    @soft = Soft.new(soft_params)

    respond_to do |format|
      if @soft.save
        format.html { redirect_to @soft, notice: 'Soft was successfully created.' }
        format.json { render :show, status: :created, location: @soft }
      else
        format.html { render :new }
        format.json { render json: @soft.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /softs/1
  # PATCH/PUT /softs/1.json
  def update
    respond_to do |format|
      if @soft.update(soft_params)
        format.html { redirect_to @soft, notice: 'Soft was successfully updated.' }
        format.json { render :show, status: :ok, location: @soft }
      else
        format.html { render :edit }
        format.json { render json: @soft.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /softs/1
  # DELETE /softs/1.json
  def destroy
    @soft.destroy
    respond_to do |format|
      format.html { redirect_to softs_url, notice: 'Soft was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_soft
      @soft = Soft.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def soft_params
      params.require(:soft).permit(:name, :price, :maker, :hard)
    end
end
