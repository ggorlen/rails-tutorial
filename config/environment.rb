# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

# http://stackoverflow.com/questions/25712027/nameerror-uninitialized-constant-articleimageuploader-when-using-carrierwave
require 'carrierwave'
require 'carrierwave/orm/activerecord'