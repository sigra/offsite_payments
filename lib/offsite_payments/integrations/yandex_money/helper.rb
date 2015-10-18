module OffsitePayments #:nodoc:
  module Integrations #:nodoc:
    module YandexMoney
      class Helper < OffsitePayments::Helper
        mapping :account, 'customerNumber'
        mapping :amount, 'sum'
        mapping :order, 'orderNumber'
        mapping :notify_url, 'shopNotifyURL'
        mapping :return_url, 'shopSuccessURL'
        # mapping :cancel_return_url, ''
        mapping :description, 'orderDetails'

        mapping :customer, :email      => 'cps_email',
                :phone      => 'cps_phone'

        # additional yandex.money parameters
        mapping :scid, 'scid'
        mapping :shopId, 'shopId'
        mapping :shopArticleId, 'shopArticleId'
        mapping :paymentType, 'paymentType'
      end
    end
  end
end