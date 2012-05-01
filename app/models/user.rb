class User < ActiveRecord::Base
  attr_accessible :nombre, :email, :content

  email_regex = /[\w+\-.]+@[a-z\d\-.]+\.[a-z]+/i

  validates :nombre, :presence => true, :length   => {:maximum => 50}
  validates :email, :presence => true,
            :format     => {:with => email_regex},
            :uniqueness => {:case_sensitive => false}
  validates :content, :presence => true, :length => {:within => 10..180}

end
