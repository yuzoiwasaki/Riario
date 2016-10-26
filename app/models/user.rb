class User < ActiveRecord::Base
  has_many :nikkis
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable
  def user_name
    self.username.presence || "匿名さん"
  end
end
