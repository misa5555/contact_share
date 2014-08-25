class Contact < ActiveRecord::Base
  validates :name, presence: true, uniqueness: {scope: :email}
  validates :email, presence: true, uniqueness: {scope: :name}

  validates :user_id, presence: true, uniqueness: true


  belongs_to(
    :owner,
    class_name: 'User',
    foreign_key: :user_id,
    primary_key: :id
  )

  has_many :contact_shares
  has_many(
    :shared_users,
    through: :contact_shares,
    source: :user
  )
end
