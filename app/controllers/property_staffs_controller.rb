class PropertyStaffsController < ApplicationController
  before_action :set_property_staff, only: [:show, :edit, :update, :destroy]

  # GET /property_staffs
  # GET /property_staffs.json
  def index
    @property_staffs = PropertyStaff.all
  end

  # GET /property_staffs/1
  # GET /property_staffs/1.json
  def show
  end

  # GET /property_staffs/new
  def new
    @property_staff = PropertyStaff.new
  end

  # GET /property_staffs/1/edit
  def edit
  end

  # POST /property_staffs
  # POST /property_staffs.json
  def create
    @property_staff = PropertyStaff.new(property_staff_params)

    respond_to do |format|
      if @property_staff.save
        format.html { redirect_to @property_staff, notice: 'Property staff was successfully created.' }
        format.json { render :show, status: :created, location: @property_staff }
      else
        format.html { render :new }
        format.json { render json: @property_staff.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /property_staffs/1
  # PATCH/PUT /property_staffs/1.json
  def update
    respond_to do |format|
      if @property_staff.update(property_staff_params)
        format.html { redirect_to @property_staff, notice: 'Property staff was successfully updated.' }
        format.json { render :show, status: :ok, location: @property_staff }
      else
        format.html { render :edit }
        format.json { render json: @property_staff.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /property_staffs/1
  # DELETE /property_staffs/1.json
  def destroy
    @property_staff.destroy
    respond_to do |format|
      format.html { redirect_to property_staffs_url, notice: 'Property staff was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_property_staff
      @property_staff = PropertyStaff.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def property_staff_params
      params.fetch(:property_staff, {})
    end
end
