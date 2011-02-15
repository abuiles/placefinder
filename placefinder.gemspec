$LOAD_PATH.unshift 'lib'
require 'placefinder/version'

Gem::Specification.new do |spec|
  spec.authors     = [ "Adolfo Builes" ]
  spec.date        = Time.now.strftime('%Y-%m-%d')
  spec.description = "The simplest ruby wrapper for placefinder's API."
  spec.email       = "builes.adolfo@googlemail.com"
  spec.has_rdoc    = false
  spec.homepage    = "http://github.com/abuiles/placefinder"
  spec.name        = "placefinder"
  spec.version     = Placefinder::VERSION
  spec.summary     = %q{See example: https://github.com/abuiles/placefinder/blob/master/README.markdown}

  spec.files  = %w( README.markdown Rakefile LICENSE )
  spec.files += Dir.glob("lib/**/*")

  spec.add_development_dependency "rspec"
  spec.add_development_dependency("pamela")
  spec.add_dependency("httparty", ">= 0.7.3")
end
