class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable

  
  def self.from_omniauth(auth)
    
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
    binding.pry  
      user.provider = auth.provider
      user.name = auth.info.name
      
    end
  end
end
