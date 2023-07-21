class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable
        
        enum :role, [:normal, :ejecutivo, :admin]
  
        has_many :news
        has_many :comments
end
