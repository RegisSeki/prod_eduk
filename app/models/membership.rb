class Membership < ApplicationRecord
  belongs_to :course
  belongs_to :user
end
