RSpec.configure do |config|
  if config.files_to_run.one?
    config.default_formatter = 'doc'
  end

  config.profile_examples = 5
end
