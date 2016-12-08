class OrderNotifier < ApplicationMailer
  default from: 'Sam Ruby <depot@example.com>'
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_notifier.recieved.subject
  #
  def recieved (order)
    @order=order

    mail to: order.email, subject: "You are receiveing the first Mail from Depot App"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_notifier.shipped.subject
  #
  def shipped (order)
    @order=order

    mail to: order.email, subject: "You are receiveing the first Mail from Depot App"
  end
end
