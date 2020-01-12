class DoctorsController < ApplicationController
    
    
    def index
      @doctors = Doctor.all 
    end
    
    def show
      @doctor = Doctor.find(params[:id])
      #byebug
    end 

    def new
      @doctor = Doctor.new
    end
    
    def create
      @doctor = Doctor.new(doctor_params)
    end
    
    def doctor_params 
      params.require('doctor').permit('name', 'department')
    end 

end
