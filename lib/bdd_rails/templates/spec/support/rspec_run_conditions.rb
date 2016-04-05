RSpec.configure do |config|
  config.filter_run :focus
  config.run_all_when_everything_filtered = true
  config.infer_spec_type_from_file_location!
  config.order = :random
  Kernel.srand config.seed
end
