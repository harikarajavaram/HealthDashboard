class PatientsController < ApplicationController
  before_action :set_patient, only: [:show, :update, :destroy, :patientHR, :patientHRDate]

  # GET /patient/1/patientHR/date
  def patientHRDate
    render json: @patient.heartrates.filter_by_date(params[:date])
  end
  # GET /patients/1/patientHR
  def patientHR
    render json: @patient.heartrates
  end
  # GET /patients
  def index
    @patients = Patient.all

    render json: @patients
  end

  # GET /patients/1
  def show
    render json: @patient
  end

  # POST /patients
  def create
    @patient = Patient.new(patient_params)

    if @patient.save
      render json: @patient, status: :created, location: @patient
    else
      render json: @patient.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /patients/1
  def update
    if @patient.update(patient_params)
      render json: @patient
    else
      render json: @patient.errors, status: :unprocessable_entity
    end
  end

  # DELETE /patients/1
  def destroy
    @patient.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_patient
      @patient = Patient.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def patient_params
      params.require(:patient).permit(:name, :email, :dob, :provider, :provider_id)
    end
end
