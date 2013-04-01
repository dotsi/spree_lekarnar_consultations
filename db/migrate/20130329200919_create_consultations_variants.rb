class CreateConsultationsVariants < ActiveRecord::Migration
  def up
    # We used create_table with :id => false but put it back
    # because it was easier to manage (delete) relations with IDs
    create_table :spree_consultations_variants do |t|
      t.references :consultation
      t.references :variant
    end

    add_index :spree_consultations_variants, [:consultation_id], :name => 'index_spree_consultations_variants_on_consultation_id'
    add_index :spree_consultations_variants, [:variant_id],      :name => 'index_spree_consultations_variants_on_variant_id'
  end

  def down
    drop_table :spree_consultations_variants
  end
end