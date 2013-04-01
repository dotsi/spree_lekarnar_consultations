class Spree::ConsultationClassification < ActiveRecord::Base
  self.table_name = 'spree_consultations_variants'
  belongs_to :consultation, :class_name => "Spree::Consultation"
  belongs_to :variant, :class_name => "Spree::Variant"

  validates_presence_of :consultation_id
  validates_presence_of :variant_id

  validates_uniqueness_of :variant_id, on: :create, scope: [:consultation_id]

  attr_accessible :variant_id, :consultation_id

end
