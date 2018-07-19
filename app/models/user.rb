class User < ApplicationRecord

    has_secure_password
    validates :email, presence: true, uniqueness: true
    has_many :entries, dependent: :destroy
    has_many :reflections, dependent: :destroy

end
