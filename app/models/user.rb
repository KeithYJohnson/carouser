require 'digest/sha2'

class User < ActiveRecord::Base
  attr_accessible :age, :host, :interests, :name, :salt, :hashed_password, :password, :password_confirmation

  has_many :reservations
  has_many :hosted_events, :class_name=> 'Event', :foreign_key => 'host_id'
  has_many :attended_events, :class_name=> 'Event', :through => :reservations

  belongs_to :host, :class_name => 'User', :foreign_key => 'host_id'

  validates :name, :presence => true, :uniqueness => true
  validates :password, :confirmation => true #automatically checking passwords mathc, will need to add second form for this though
  attr_accessor :password_confirmation
  	# Making password a virtual attribute of the model, won't be persisted to database.
  attr_reader :password 	
  validate :password_must_be_present

  def User.authenticate(name, password)
  	if user = find_by_name(name)
  		if user.hashed_password == encrypt_password(password, user.salt)
  			user
  		end
  	end
  end

  private
  
	  def password_must_be_present
	  	errors.add(:password, "Missing Password") unless hashed_password.present?
	  end

	  
	  def User.encrypt_password(password, salt) 
	  	#The hexdigest part, and several other similar methods are written 
	  	#as a C extension for speed. #It's found in ext/digest/ in the #
	  	#Ruby source.
	  	Digest::SHA2.hexdigest(password + "wibble" + salt)
		end

		def generate_salt
			self.salt = self.object_id.to_s + rand.to_s
		end

		def password=(password)
			@password = password

			if password.present?
				generate_salt  	
				self.hashed_password = self.class.encrpyt_password(password,salt)
			end
		end


end

