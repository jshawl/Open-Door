class Provider < ActiveRecord::Base
  has_many :postings
  has_many :seekers, through: :postings
end
