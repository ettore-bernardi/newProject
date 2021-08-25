class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  has_many :orders
  
  has_one :userInfo
  accepts_nested_attributes_for :userInfo, reject_if: :all_blank, allow_destroy: true

  def resgistration_completed?
    if userInfo.address == nil || userInfo.city == nil || userInfo.state == nil || userInfo.zipCode == nil || userInfo.phone == nil
      false
    else
      true
    end
  end

  def admin?
    if role == 1
      true
    elsif
      false
    end
  end  
end
