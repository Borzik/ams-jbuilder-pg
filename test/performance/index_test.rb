require 'test_helper'
require 'rails/performance_test_help'

class IndexTest < ActionDispatch::PerformanceTest
  # Refer to the documentation for all available options
  self.profile_options = { runs: 5, metrics: [:wall_time, :memory, :process_time],
                           output: 'tmp/performance', formats: [:flat] }

  test "posts index" do
    get '/posts', format: :json
  end
end
