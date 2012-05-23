class CartCell < Cell::Rails

  def display(args)
  	@cart = args[:cart]
    render
  end

end
