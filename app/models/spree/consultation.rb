class Spree::Consultation < ActiveRecord::Base
  validates_presence_of :name
  validates_presence_of :description
  validates_presence_of :form_title, :form_description

  # validates_attachment_presence :photo, if: :has_consultant?

  attr_accessible :photo, :consultant_email, :consultant_name, :description, :form_description, :form_title, :name

  has_attached_file :photo,
                    :styles => { :medium => "300x300>", :thumb => "100x100>" },
                    :default_url => "/images/:style/missing.png",
                    :default_style => :medium,
                    :url => '/spree/consultants/:id/:style/:basename.:extension',
                    :path => ':rails_root/public/spree/consultants/:id/:style/:basename.:extension',
                    :convert_options => { :all => '-strip -auto-orient' }

private

  # def has_consultant
  #   !consultant_name.blank?
  # end

end