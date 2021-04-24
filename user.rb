class User < ApplicationRecord
  validates :name,presence: true,length:{maximum:15}
  validates :email,format:{with:/\A[\w\-.]+@[a-z]+.[a-z]+.[a-z]\z/}
  validates :password,format:{with:/\A(?=.*?[a-z])(?=.*?\d)[a-z\d]{8,32}\z/}
  
  has_secure_password
end
