class User < ActiveRecord::Base
<<<<<<< HEAD
=======
  validates :email, uniqueness: true

  has_secure_password
  
>>>>>>> feature/user-auth
end
