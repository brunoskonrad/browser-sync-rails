require 'rails/generators/base'

module BrowserSyncRails
  module Generators
    class InstallGenerator < Rails::Generators::Base
      desc "Install the browser sync"

      def setup
        unless exist_command? 'npm'
          puts 'You should have Node installed to continue. Download page: https://nodejs.org/en/download/'
          puts 'Or you can also install via NVM - Node Version Manager -. Check it out: https://github.com/creationix/nvm'
          exit
        end

        unless exist_command? 'browser-sync'
          puts 'Installing browser sync. Just a moment.'
          exec 'npm i -g browser-sync'
        end

        create_file "config/browser_sync.yml"
      end

      private

      def which(cmd)
        exts = ENV['PATHEXT'] ? ENV['PATHEXT'].split(';') : ['']
        ENV['PATH'].split(File::PATH_SEPARATOR).each do |path|
          exts.each { |ext|
            exe = File.join(path, "#{cmd}#{ext}")
            return exe if File.executable?(exe) && !File.directory?(exe)
          }
        end
        return nil
      end

      def exist_command?(cmd)
        which(cmd) != nil
      end
    end
  end
end
