class Industry < ActiveRecord::Base
  attr_accessible :color, :name

  def to_s
    name 
  end
end
