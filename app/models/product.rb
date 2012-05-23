class Product
  include Mongoid::Document
  
  CATEGORIES = ["PC Games", "Tabletop Games", "Books"]
  field :title, :type => String
  field :description, :type => String
  field :category, :type => String
  field :image, :type => String
  field :price, :type => Integer

  mount_uploader :image, ProductImageUploader
end
