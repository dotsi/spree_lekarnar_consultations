# Kopiraj iz spree_essentials (posts)

class Spree::ConsultationClassification < ActiveRecord::Base
  self.table_name = 'spree_consultations_taxons'
  belongs_to :consultation, :class_name => "Spree::Consultation"
  belongs_to :product, :class_name => "Spree::Product"
end

# create_table :spree_consultations_taxons, :id => false do |t|
#   t.references :consultation
#   t.references :product
# end

# add_index :spree_consultations_taxons, [:consultation_id], :name => 'index_spree_products_taxons_on_product_id'
# add_index :spree_consultations_taxons, [:taxon_id],   :name => 'index_spree_products_taxons_on_taxon_id'
