class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable
        
        enum role: [:normal, :ejecutivo, :admin]
        before_create :set_default_role
  
        has_many :news
        has_many :comments



        private

        def set_default_role
          self.role ||= 1
        end
end
