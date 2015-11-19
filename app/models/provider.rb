class Provider < ActiveRecord::Base
  has_many :postings
  belongs_to :user
end
