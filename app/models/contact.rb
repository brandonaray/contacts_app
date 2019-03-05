class Contact < ApplicationRecord
  def friendly_created_at
    created_at.strftime("%B %e, %Y")
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def japan_phone
    "+81 #{phone_number}"
  end
end
