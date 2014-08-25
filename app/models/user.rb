class User < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  validates :email, presnece: true, uniqueness: true
end
