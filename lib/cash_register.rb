class CashRegister

  attr_accessor :total, :cart, :discount

  def initialize(discount = 0)
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
   if @discount == 0
     return "There is no discount to apply."
   end
    percent = @discount.to_f / 100
    newTotal = @total * percent
    @total -= newTotal
    return "After the discount, the total comes to $#{@total.to_i}."
  end

  def items
    @cart
  end

  def void_last_transaction

  end

end
