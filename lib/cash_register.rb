require "pry"

class CashRegister

 attr_accessor :discount, :total

 def initialize(discount = 0.0)
  @total = 0
  @discount = discount
  @items = []
 end

 def add_item(title, price, quantity = 1)
  self.total += (price * quantity)
  quantity.times {self.items << title}
 end

 def apply_discount
   if self.discount > 0
     self.total = self.total * (1 - self.discount / 100.0)
     "After the discount, the total comes to $#{self.total.to_i}."
   else
     "There is no discount to apply."
   end
 end

 def items
   @items
 end

 def void_last_transaction
   self.total = 0.0
 end

end


wee = CashRegister.new(20)

wee.apply_discount
