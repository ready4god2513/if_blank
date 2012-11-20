require "rubygems"
require "bundler/setup"

require "if_blank"

RSpec.configure do |config|
  # only run "focused" test, see http://railscasts.com/episodes/285-spork
  config.treat_symbols_as_metadata_keys_with_true_values = true
  # run all tests by default, but leave setup for filters
  config.filter_run :focus => true
  config.run_all_when_everything_filtered = true
end