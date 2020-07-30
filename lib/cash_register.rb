class CashRegister

  attr_accessor :total, :cart, :discount

  def initialize(discount = false)
    @total = 0
    @cart = []
    @discount = discount
  end

  def total
    @total
  end

  def add_item(item, price, quantity=1)
    @cart << item
    x = price * quantity
    @total += x
  end

  def apply_discount
   if !@discount
     return "There is no discount to apply."
   end
   @total * @discount
    return "After the discount, the total comes to $#{total}"

  end

  def items
    @cart
  end

  def void_last_transaction

  end

end
