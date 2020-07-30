class CashRegister

  attr_accessor :total, :cart, :discount

  def initialize(discount = false)
    @total = 0
    @cart = []
    @discount = discount
  end


  def add_item(item, price, quantity=1)
    @cart << item
    price *= quantity
    @total += price
  end

  def apply_discount
   if !@discount
     return "There is no discount to apply."
   end
    percent = @discount.to_f / 100
    newTotal = @total * percent
    return "After the discount, the total comes to $#{newTotal}"
  end

  def items
    @cart
  end

  def void_last_transaction

  end

end
