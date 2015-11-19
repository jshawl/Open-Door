class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :provider
  has_one :seeker

  def is_provider?
    Provider.exists? user: self
  end

  # def provider
  #   @provider = Provider.find_by(user: self)
  # end
end
