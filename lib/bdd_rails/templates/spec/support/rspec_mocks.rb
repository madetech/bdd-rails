RSpec.configure do |config|
  config.mock_with :rspec do |mocks|
    mocks.syntax = :expect

    mocks.verify_partial_doubles = true
  end
end
