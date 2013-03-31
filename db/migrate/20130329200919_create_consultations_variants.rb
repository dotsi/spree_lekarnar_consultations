class CreateConsultationsVariants < ActiveRecord::Migration
  def up
    create_table :spree_consultations_variants, :id => false do |t|
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