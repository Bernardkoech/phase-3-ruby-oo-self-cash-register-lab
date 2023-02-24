require 'pry'
class CashRegister
  attr_accessor :discount, :total
  def initialize(discount = 0)
    @discount = discount
    @total = 0
  end

  def add_item(title, price, quantity = 1)
    self.total += price * quantity
  end

  def apply_discount
    case
    when self.discount
      discount = @discount/100.0 * self.total
      self.total -= discount
      "After the discount, the total comes to $#{self.total.round}."
    end

  end
end
binding.pry
