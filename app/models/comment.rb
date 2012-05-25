class Comment
  include Mongoid::Document
  field :author, :type => String
  field :body, :type => String

  belongs_to :commentable, :polymorphic => true
  belongs_to :user
end
