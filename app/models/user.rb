class User < ApplicationRecord

  has_secure_password
  validates :email, presence: true

  has_many :bookings
  has_many :restaurants, through: :bookings

  ALLOWED_ROLES = ["owner"]

  def allowed?
    ALLOWED_ROLES.include?(self.role)
  end

end
