class Spree::Admin::ConsultationsController < Spree::Admin::ResourceController

  before_filter :load_taxons, except: [:index, :destroy]

  def edit
    @consultation = Spree::Consultation.find params[:id]
  end

  def create
    @consultation = Spree::Consultation.new params[:consultation]
    @consultation.save

    redirect_to edit_admin_consultation_path(@consultation), notice: "Consultation \"#{@consultation.name}\" created!"
  end

private

  def load_taxons
    @taxons ||= Spree::Taxon.all
  end

end