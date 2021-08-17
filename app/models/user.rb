class User < ApplicationRecord
  has_many :orders

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         

  def admin
    if user.role == 1
      true
    end
  end
end
