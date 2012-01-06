class WeightEntry < ActiveRecord::Base
    has_many :comments
    
    validates_presence_of :on
    validates_presence_of :weight
end
