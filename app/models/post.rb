class Post < ApplicationRecord
  belongs_to :user
  belongs_to :category

  default_scope -> { include(:user).order(created: :desc) }
end
