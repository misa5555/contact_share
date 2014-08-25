class Contact < ActiveRecord::Base
  validates :name, presence: true, uniqueness: {scope: :email}
  validates :email, presence: true, uniqueness: {scope: :name}

  validates :user_id, presnece: true, uniqueness: true
  belongs_to :user
end
