require 'browser_sync_rails/runner'

namespace :browser_sync do
  desc "Starts browser sync"
  task :start do
    runner = BrowserSyncRails::Runner.new
    sh runner.cli_command
  end
end
