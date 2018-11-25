class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         validates :name, presence: true

         has_many :feedbacks, dependent: :destroy

         def subscribed?
         	stripe_subscription_id?
         end
end
