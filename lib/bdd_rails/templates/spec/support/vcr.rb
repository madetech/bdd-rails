require 'vcr'

VCR.configure do |c|
  c.hook_into :webmock
  c.cassette_library_dir = 'spec/fixtures/cassettes'
  c.default_cassette_options = { record: :new_episodes }
  c.ignore_localhost = true
end
