class Contact < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, uniqueness: true
  validates :email, format: /\w+@\w+\.{1}[a-zA-z]{2,}/

  belongs_to :user
  
  def friendly_updated_at
    updated_at.strftime("%B %e, %Y")
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def japan_phone
    "+81 #{phone_number}"
  end
end
