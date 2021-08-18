class FinishOrderReflex < ApplicationReflex

  def finish
    order = Order.find(element.dataset[:order_id])
    order.update(ordered: true, order_date: Time.now)
  end

  def cancel
    order = Order.find(element.dataset[:order_id])
    order.update(ordered: false, order_date: nil)
  end
end
