module Spree
  CheckoutController.class_eval do
    prepend MyCheckoutController
  end
end
