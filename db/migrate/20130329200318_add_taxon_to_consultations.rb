class AddTaxonToConsultations < ActiveRecord::Migration
  def change
    add_column :spree_consultations, :taxon_id, :integer
    
    add_index :spree_consultations, :taxon_id
  end
end
