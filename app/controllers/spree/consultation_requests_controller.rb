# encoding: utf-8
class Spree::ConsultationRequestsController < Spree::StoreController

  before_filter :load_consultation

  def new
    @consultation_request = Spree::ConsultationRequest.new
  end

  def create
    @consultation_request = Spree::ConsultationRequest.new params[:consultation_request]
    if @consultation_request.valid?
      redirect_to consultation_url(@consultation), notice: "Sporočilo poslano"
    else
      render :new
    end
  end

private

  def load_consultation
    @consultation ||= Spree::Consultation.find params[:consultation_id]
  end

end