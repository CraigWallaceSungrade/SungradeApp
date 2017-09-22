class AppointmentStaffsController < ApplicationController
  before_action :set_appointment_staff, only: [:show, :edit, :update, :destroy]

  # GET /appointment_staffs
  # GET /appointment_staffs.json
  def index
    @appointment_staffs = AppointmentStaff.all
  end

  # GET /appointment_staffs/1
  # GET /appointment_staffs/1.json
  def show
  end

  # GET /appointment_staffs/new
  def new
    @appointment_staff = AppointmentStaff.new
  end

  # GET /appointment_staffs/1/edit
  def edit
  end

  # POST /appointment_staffs
  # POST /appointment_staffs.json
  def create
    @appointment_staff = AppointmentStaff.new(appointment_staff_params)

    respond_to do |format|
      if @appointment_staff.save
        format.html { redirect_to @appointment_staff, notice: 'Appointment staff was successfully created.' }
        format.json { render :show, status: :created, location: @appointment_staff }
      else
        format.html { render :new }
        format.json { render json: @appointment_staff.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /appointment_staffs/1
  # PATCH/PUT /appointment_staffs/1.json
  def update
    respond_to do |format|
      if @appointment_staff.update(appointment_staff_params)
        format.html { redirect_to @appointment_staff, notice: 'Appointment staff was successfully updated.' }
        format.json { render :show, status: :ok, location: @appointment_staff }
      else
        format.html { render :edit }
        format.json { render json: @appointment_staff.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /appointment_staffs/1
  # DELETE /appointment_staffs/1.json
  def destroy
    @appointment_staff.destroy
    respond_to do |format|
      format.html { redirect_to appointment_staffs_url, notice: 'Appointment staff was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_appointment_staff
      @appointment_staff = AppointmentStaff.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def appointment_staff_params
      params.fetch(:appointment_staff, {})
    end
end
