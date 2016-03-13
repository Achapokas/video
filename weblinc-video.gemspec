$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "weblinc/video/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "weblinc-video"
  s.version     = Weblinc::Video::VERSION
  s.authors     = ["Ashley Chapokas"]
  s.email       = ["achapokas@weblinc.com"]
  s.homepage    = "https://stash.tools.weblinc.com/projects/WP"
  s.summary     = "Allows clients to manage video content on their website through the admin."
  s.description = "Allows clients to manage video content on their website through the admin."
  s.files = `git ls-files`.split("\n")
  # s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]

  s.required_ruby_version = '>= 2.0.0'

  s.add_dependency 'weblinc', '~> 2.0'

  s.add_development_dependency "sqlite3"
end
