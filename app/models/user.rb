class User < ActiveRecord::Base
  attr_accessible :email, :name, :value
end
