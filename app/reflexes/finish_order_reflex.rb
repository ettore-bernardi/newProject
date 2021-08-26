# frozen_string_literal: true

class FinishOrderReflex < ApplicationReflex
  def finish
    order = Order.find(element.dataset[:order_id])
    order.update(ordered: true, order_date: Time.now)
  end

  def cancel
    order = Order.find(element.dataset[:order_id])
    order.update(ordered: false, order_date: nil)
  end

  def done
    order = Order.find(element.dataset[:order_id])
    order.update(done: true)
  end

  def undone
    order = Order.find(element.dataset[:order_id])
    order.update(done: false)
  end
end
