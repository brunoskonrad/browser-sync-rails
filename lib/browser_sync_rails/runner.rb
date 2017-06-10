module BrowserSyncRails
  class Runner
    def initialize(options={})
      @options = options
    end

    def cli_command
      "browser-sync start --proxy #{host}:#{port} --files '#{files}' #{config}"
    end

    private

    def host
      @options[:host] || 'localhost'
    end

    def port
      @options[:port] || '3000'
    end

    def files
      files = ['app/assets', 'app/views']
      if @options[:files]
        (files | @options[:files]).join(', ')
      else
        files.join(', ')
      end
    end

    def config
      config_file = @options[:config] || File.join(Rails.root, 'config', 'browser_sync.js')
      if File.exist?(config_file)
        "--config #{config_file}"
      else
        ""
      end
    end
  end
end
