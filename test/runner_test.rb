require 'test_helper'
require 'browser_sync_rails/runner'

class BrowserSyncRunnerTest < ActiveSupport::TestCase
  test "using the default values" do
    runner = BrowserSyncRails::Runner.new
    assert runner.cli_command ==
      "browser-sync start --proxy localhost:3000 --files 'app/assets, app/views'"
  end

  test "passing some different host value" do
    runner = BrowserSyncRails::Runner.new({host: '0.0.0.0'})
    assert runner.cli_command ==
      "browser-sync start --proxy 0.0.0.0:3000 --files 'app/assets, app/views'"
  end

  test "passing a differente port" do
    runner = BrowserSyncRails::Runner.new({port: 5000})
    assert runner.cli_command ==
      "browser-sync start --proxy localhost:5000 --files 'app/assets, app/views'"
  end

  test "passing another files" do
    runner = BrowserSyncRails::Runner.new({files: ['**/*.css']})
    assert runner.cli_command ==
      "browser-sync start --proxy localhost:3000 --files 'app/assets, app/views, **/*.css'"
  end
end
