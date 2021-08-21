class User < ApplicationRecord
  has_many :orders
  has_many :addresses

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  def admin?
    if role == 1
      true
    elsif
      false
    end
  end  
end
