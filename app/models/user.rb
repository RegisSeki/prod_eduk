class User < ApplicationRecord
	belongs_to :sector
	has_many :memberships
	has_many :courses, :through => :memberships
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
