class CashRegister

  attr_accessor :total, :cart, :discount

  def initialize(discount = 0)
    @total = 0
    @cart = []
    @discount = discount
  end

  def total
    @total
  end

  def add_item(item, price)
    @cart << item
    @total += price
  end

  def apply_discount

  end

  def items
    @cart
  end

  def void_last_transaction

  end

end
