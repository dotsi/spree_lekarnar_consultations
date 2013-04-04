class Spree::ConsultationRequest

  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming

  attr_accessor :full_name, :email, :body

  validates_presence_of :full_name, :email, :body, allow_blank: false

  def initialize(attributes = {})
    attributes.each_pair do |name, value|
      send("#{name}=", value)
    end
  end

  # ConsultationRequest is sent by email and not persisted in database
  def persisted?
    false
  end

end