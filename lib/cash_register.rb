require "pry"
class CashRegister
    attr_accessor :total, :discount, :items, :last_transaction
    
    def initialize(discount=0)
        @total = 0
        @discount = discount
        @items = []
    end
    
    def add_item(title, price, quantity=1)
        # binding.pry
        self.total += price * quantity
        quantity.times do
            @items << title
        end
        self.last_transaction = price * quantity
    end
    
    def apply_discount
        self.total = self.total - (discount * self.total)/100
        if discount > 0
            "After the discount, the total comes to $#{self.total}."
        elsif discount = 0
            "There is no discount to apply."
        end
    end
    
    def void_last_transaction
        self.total -= last_transaction
        # binding.pry
    end

end
