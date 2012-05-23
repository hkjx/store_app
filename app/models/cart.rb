class Cart
  attr_reader :items
  def initialize
  	@items = []
  end

  def add_product(product)
  	current_item = @items.find {|item| item.product == product.id}
  	if current_item
  		current_item.inc_quantity
  	else  		
  		@items << CartItem.new(product)
  	end
  end
end
