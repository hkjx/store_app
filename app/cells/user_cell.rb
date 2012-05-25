class UserCell < Cell::Rails

  def display(args)
  	@user = args[:user]
    render
  end

end
