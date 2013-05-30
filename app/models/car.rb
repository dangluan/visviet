class Car < ActiveRecord::Base
  attr_accessible :name
  has_one :rating_cache , :as => :cacheable , :dependent => :destroy
  letsrate_rateable "speed", "engine", "price"
end
