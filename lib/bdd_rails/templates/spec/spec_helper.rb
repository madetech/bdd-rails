# Please leave this file as is
#
# If you would like to add configuration for your rspec test suite
# add a well named file into the support/ directory.
#
# Prefix your file name with a number if the load order is important.
#
# For more information head to https://github.com/lukemorton/bdd-rails
#
Dir[File.join(File.dirname(__FILE__), 'support/**/*.rb')].each do |support_file|
  require support_file
end
