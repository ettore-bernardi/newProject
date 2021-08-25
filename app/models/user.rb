class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  has_many :orders
  
  has_one :userInfo
  accepts_nested_attributes_for :userInfo, reject_if: :all_blank, allow_destroy: true

  



  def registration_completed?
    if userInfo.present? 
      if userInfo.address == nil || userInfo.city == nil || userInfo.state == nil || userInfo.zipCode == nil || userInfo.phone == nil
        false
      else
        true
      end
    else
      false
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
