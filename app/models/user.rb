class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :orders
  
  # can :manage, Product
  # can :read, :all 
  # can :manage, :all
  
  def admin?
    role == "admin"
  end
  
  

end
