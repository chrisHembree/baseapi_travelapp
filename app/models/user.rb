class User < ApplicationRecord
    has_secure_password validations: true
    validates :email, uniqueness: false

    has_many :trips

    def name
        "#{first_name} #{last_name}"
    end
end
