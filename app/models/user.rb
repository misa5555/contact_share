class User < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true

  has_many(
    :shared_contacts,
    through: :contact_shares,
    source: :contact
  )
  has_many :contacts
  has_many :contact_shares
end
