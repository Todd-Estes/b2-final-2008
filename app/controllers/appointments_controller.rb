class AppointmentsController < ApplicationController

  def destroy
    doctor = Doctor.find(params[:doctor_id])
    appointment = Appointment.find(params[:id])
    appointment.destroy
    redirect_to "/doctors/#{doctor.id}"
  end
end
