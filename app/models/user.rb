class User < ApplicationRecord
  include AASM
  has_secure_password

  before_validation { self.email = email.downcase if email.present? }

  validates :name, presence: true
  validates :login, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, length: { minimum: 6 }, format: { with: /(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[^A-Za-z0-9])(?=.{8,})/ }, if: -> { new_record? }

  aasm no_direct_assignment: true do
    state :email_active
    state :email_inactive, initial: true

    # user.activate!
    event :activate do
      transitions from: :email_inactive, to: :email_active
    end

    # user.deactivate!
    event :deactivate do
      transitions from: :email_active, to: :email_inactive
    end
  end
end
