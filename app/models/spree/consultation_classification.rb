class Spree::ConsultationClassification < ActiveRecord::Base
  self.table_name = 'spree_consultations_variants'
  belongs_to :consultation, :class_name => "Spree::Consultation"
  belongs_to :variant, :class_name => "Spree::Variant"
end