
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "omniauth-paloma/version"

Gem::Specification.new do |gem|
  gem.name          = "omniauth-paloma"
  gem.version       = Omniauth::Paloma::VERSION
  gem.authors       = ["Lenart Rudel"]
  gem.email         = ["lenart.rudel@gmail.com"]

  gem.summary       = %q{Authenticate using Astina's Paloma oAuth provider}
  gem.description   = %q{Use Astina's Paloma service to authenticate users}
  # gem.homepage      = "TODO: Put your gem's website or public repo URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  gem.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  gem.bindir        = "exe"
  gem.executables   = gem.files.grep(%r{^exe/}) { |f| File.basename(f) }
  gem.require_paths = ["lib"]

  gem.add_dependency "omniauth", "~> 1.5"
  gem.add_dependency "omniauth-oauth2", ">= 1.4.0", "< 2.0"

  gem.add_development_dependency "bundler", "~> 1.16"
  gem.add_development_dependency "rake", "~> 10.0"
end
