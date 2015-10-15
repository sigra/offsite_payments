module OffsitePayments #:nodoc:
  module Integrations #:nodoc:
    module YandexMoney
      class Return < OffsitePayments::Return
        def item_id
          params['orderNumber']
        end
      end
    end
  end
end