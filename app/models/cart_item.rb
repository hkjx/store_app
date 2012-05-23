class CartItem
  attr_accessor :quantity, :product
  def initialize(product)
  	@product = product.id
  	@quantity = 1
  end

  def add_product(product)
  	@items << product.id
  end

  def inc_quantity
  	@quantity+=1
  end

  def title
  	Product.find(@product).title
  end

  def price
  	Product.find(@product).price*@quantity
  end
end
