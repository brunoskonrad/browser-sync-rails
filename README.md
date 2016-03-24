# Browser Sync Rails

This gem is a *easier* way to use [browser sync](https://browsersync.io) with your rails app.

## Getting started

You can add it to your Gemfile with:

```ruby
group :development do
  gem 'browser_sync_rails'
end
```

Then run the bundle command to install it.

After you install the gem, you need to run the generator:

```sh
bundle exec rails generate browser_sync_rails:install
```

This generator will prepare your environment for browser sync.

## Using

You will use the browser sync along with your rails app. So you need to start the rails app normally and, in another terminal instance, start the browser sync.

The browser sync will proxy your running app and will handle the live reloading and synchronization between multiple devices.

Run this rake task to start it:

```sh
bundle exec rake browser_sync:start
```

## Configurations

By default this gem watch for `app/assets` and `app/views`. You can also add more files to watch or change the host or port.

It is done in `config/browser_sync.yml`. Check a config file sample:

```yaml
# default is: localhost
host: 'some host'

# default is: 3000
port: 1234

# either watch this files along with `app/assets` and `app/views`
files:
  - 'some/file/**/*.css'
```

## Problems?

If something goes wrong with your setup, because of a NPM permission, you'll need to install browser-sync by yourself:

```sh
sudo npm install -g browser-sync
```

------

Any others, please create a issue about.

## Contributing

Feel free to open a Pull Request or open issues. 😄
