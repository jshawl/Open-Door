class Posting < ActiveRecord::Base
  belongs_to :provider
  # consider adding AR validations here
  # so you can prevent empty submissions
  # and show errors to the user
end
