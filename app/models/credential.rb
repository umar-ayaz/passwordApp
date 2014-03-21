class Credential < ActiveRecord::Base
   attr_accessible :name , :password, :password_confirmation, :url  , :comment


  validates_confirmation_of :password
  validates_presence_of :password, :on => :create

  belongs_to :user

   before_save :encrypt_password

   after_save :clear_password

   def encrypt_password
     if password.present?
       self.salt = BCrypt::Engine.generate_salt
       self.encrypted_password= BCrypt::Engine.hash_secret(password, salt)
     end
   end
   def clear_password
     self.password = nil
   end


  before_save :encode_password


  def encode_password
    if password.present?
      enc   = Base64.encode64('Send reinforcements')

    end
  end

  def decode_password
    enc   = Base64.encode64('Send reinforcements')
  end
end
