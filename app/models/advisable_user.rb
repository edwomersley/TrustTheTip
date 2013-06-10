class AdvisableUser < ActiveRecord::Base
  attr_accessible :advisable_id, :user_id
belongs_to :advisable
belongs_to :user
end
