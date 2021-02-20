$:.push File.expand_path("lib", __dir__)
require "activerecord_i18n/version"

Gem::Specification.new do |spec|
  spec.name        = 'activerecord_i18n'
  spec.version     = ActiverecordI18n::VERSION
  spec.authors     = ["Denis Fabien"]
  spec.email       = 'denis.fabien.ca@gmail.com'
  spec.homepage    = "https://github.com/supernini/activerecord-i18n"
  spec.summary     = ""
  spec.description = "A simple gem to add a translation mechanic to your existing apps "
  spec.license     = "MIT"

  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "> 6.0"
end
