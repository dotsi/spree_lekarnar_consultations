class Spree::Admin::ConsultationsController < Spree::Admin::ResourceController

  def edit
    @consultation ||= Spree::Consultation.find params[:id]
    @taxons = Spree::Taxon.all
  end

end