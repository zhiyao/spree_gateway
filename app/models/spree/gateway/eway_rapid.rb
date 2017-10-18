module Spree
  class Gateway::EwayRapid < Gateway
    preference :login, :string
    preference :password, :string

    attr_accessible :preferred_login, :preferred_password

    def provider_class
      ActiveMerchant::Billing::EwayRapidGateway
    end

    def options
      super().merge(:test => self.preferred_test_mode)
    end
  end
end
