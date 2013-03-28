class CreateConsultations < ActiveRecord::Migration
  def change
    create_table :spree_consultations do |t|
      t.string :name
      t.text :description
      t.string :form_title
      t.text :form_description
      t.string :consultant_name
      t.string :consultant_email

      t.timestamps
    end
  end
end
