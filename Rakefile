begin
  require 'bundler/setup'
rescue LoadError
  puts 'You must `gem install bundler` and `bundle install` to run rake tasks'
end

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new

$LOAD_PATH.unshift File.expand_path('../lib', __FILE__)
require 'weblinc/video/version'

desc "Release version #{Weblinc::Video::VERSION} of the gem"
task :release do
  host = "https://#{ENV['BUNDLE_GEMS__WEBLINC__COM']}@gems.weblinc.com"

  system "git tag -a v#{Weblinc::Video::VERSION} -m 'Tagging #{Weblinc::Video::VERSION}'"
  system 'git push --tags'

  system "gem build weblinc-video.gemspec"
  system "gem push weblinc-video-#{Weblinc::Video::VERSION}.gem --host #{host}"
  system "rm weblinc-video-#{Weblinc::Video::VERSION}.gem"
end


