$:.push File.expand_path("lib", __dir__)
require "activerecord_i18n/version"

Gem::Specification.new do |spec|
  spec.name        = 'activerecord_i18n'
  spec.version     = ActiverecordI18n::VERSION
  spec.authors     = ["Denis Fabien"]
  spec.email       = 'denis.fabien.ca@gmail.com'
  spec.homepage    = "https://github.com/supernini/activerecord-i18n"
  spec.summary     = "A gem from translator ! Translation is writing in db not in file"
  spec.description = "A gem from translator ! Translation is writing in db not in file"
  spec.license     = "MIT"

  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "~> 6.0.3", ">= 6.0.3.4"

  spec.add_development_dependency "sqlite3"
end
