class User < ApplicationRecord
  has_many :orders
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  def admin?
    if role == 1
      true
    elsif
      false
    end
  end  

  def resgistration_completed?
    if address == nil || city == nil || state == nil || zipCode == nil || phone == nil
      false
    else
      true
    end
  end
end
