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

  def add_item

  end

  def apply_discount

  end

  def items

  end

  def void_last_transaction

  end

end
