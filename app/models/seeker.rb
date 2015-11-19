class Seeker < ActiveRecord::Base
  belongs_to :user
  has_many :postings
  has_many :providers, through: :postings
end
