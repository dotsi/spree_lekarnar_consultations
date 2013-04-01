class Spree::Admin::ConsultationClassificationsController < Spree::Admin::BaseController
  
  respond_to :html, :js
  
  before_filter :load_data, only: [:index, :create]

  def index
    @classifications = @consultation.consultation_classifications
    # @classification = @consultation.consultation_classifications.new
    @classification = Spree::ConsultationClassification.new consultation_id: params[:consultation_id]
  end

  def create
    @classification = @consultation.consultation_classifications.new params[:consultation_classification]
    @classification.save!

    respond_with @classification
  end

  def destroy
    @classification = Spree::ConsultationClassification.find params[:id]
    @classification.destroy

    respond_with @classification
  end

private

  def load_data
    @consultation ||= Spree::Consultation.find params[:consultation_id]
  end

end