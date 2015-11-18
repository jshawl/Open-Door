class Posting < ActiveRecord::Base
  belongs_to :provider
  belongs_to :seeker
end
