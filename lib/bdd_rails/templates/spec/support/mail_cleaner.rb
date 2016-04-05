RSpec.configure do |config|
  config.before :example do
    ActionMailer::Base.deliveries.clear
  end
end
