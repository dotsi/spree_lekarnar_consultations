class Spree::ConsultationsController < Spree::StoreController
  # helper Spree::BaseHelper

  def index
    @consultations = Spree::Consultation.all
  end

  def show
    @consultations = Spree::Consultation.all
    @consultation = Spree::Consultation.find params[:id]
    @consultation_request = Spree::ConsultationRequest.new
  end

end