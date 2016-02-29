module Spree
  module MyCheckoutController
    def edit
      @payment_sources = try_spree_current_user.payment_sources
    end
  end
end
