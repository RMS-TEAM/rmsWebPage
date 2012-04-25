class User < ActiveRecord::Base
  attr_accessible :nombre, :email, :content

  validates :nombre, :presence => true
  validates :email, :presence => true
  validates :content, :presence => true, :length => {:within => 10..180}

end
