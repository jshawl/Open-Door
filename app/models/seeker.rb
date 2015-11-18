class Seeker < ActiveRecord::Base
  has_many :postings
  has_many :providers, through: :postings
end
