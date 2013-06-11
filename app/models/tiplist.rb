class Tiplist < ActiveRecord::Base
  attr_accessible :name, :advisable_attributes
  has_many :advisables

  def advisable_attributes=(advisable_attributes)
  advisable_attributes.each do |attributes|
    advisables.build(attributes)
  end
end
end
