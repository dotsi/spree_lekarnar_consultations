Spree::Product.class_eval do

  # Returns true if a product belongs to any consultations or
  # if a product belongs to a taxonomy which has a consultation assigned
  def has_consultant?
    raise "not implemented"
  end

end