namespace :browser_sync do
  desc "Starts browser sync"
  task :start do
    sh "browser-sync start --proxy localhost:3000 --files 'app/assets, app/views'"
  end
end
