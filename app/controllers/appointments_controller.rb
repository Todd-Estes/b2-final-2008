class AppointmentsController < ApplicationController

  def destroy
    doctor = Doctor.find(params[:doctor_id])
    appointment = Appointment.find_by(doctor_id: params[:doctor_id], patient_id: params[:id])
    appointment.destroy
    redirect_to "/doctors/#{doctor.id}"
  end
end
