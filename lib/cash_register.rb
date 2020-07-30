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
    @total += x
  end

  def apply_discount
   if !@discount
     return "There is no discount to apply."
   end
   floatedDiscount = @discount.to_f
   floatedDiscount /= 100
   floatedDiscount
    return "After the discount, the total comes to $#{floatedDiscount}"

  end

  def items
    @cart
  end

  def void_last_transaction

  end

end
