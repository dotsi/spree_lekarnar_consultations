class AddPermalinkToSpreeConsultations < ActiveRecord::Migration
  def change
    add_column :spree_consultations, :permalink, :string
  end
end
