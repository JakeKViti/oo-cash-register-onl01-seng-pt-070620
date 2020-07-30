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
    return  @discount.to_f
    return "After the discount, the total comes to $#{floatDis}"
  end

  def items
    @cart
  end

  def void_last_transaction

  end

end
